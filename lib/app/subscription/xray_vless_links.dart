import 'dart:convert';

/// Returns share-link text for a supported Xray subscription, or null when
/// the response should keep the result from the normal importer.
String? tryConvertXrayVlessSubscription(String input) {
  final content = input.trimLeft();
  if (!content.startsWith('[') && !content.startsWith('{')) return null;
  try {
    return convertXrayVlessProfiles(content).join('\n');
  } on FormatException {
    return null;
  }
}

/// Converts the supported standalone Xray VLESS/REALITY outbounds to share
/// links. This does not import Xray routing, DNS, or chained outbounds.
/// Reject the entire input if any profile cannot be represented.
List<Uri> convertXrayVlessProfiles(String input) {
  final decoded = jsonDecode(input);
  final profiles = decoded is List ? decoded : [decoded];
  if (profiles.isEmpty) throw const FormatException('Empty profile list');

  return [
    for (var i = 0; i < profiles.length; i++)
      _convertProfile(_map(profiles[i]), i + 1),
  ];
}

Uri _convertProfile(Map profile, int index) {
  final outbounds = profile['outbounds'];
  if (outbounds is! List || outbounds.any((o) => o is! Map)) {
    throw FormatException('Profile $index: expected Xray outbounds');
  }
  final proxies = outbounds.cast<Map>().where(
    (o) => !const ['freedom', 'blackhole'].contains(o['protocol']),
  );
  if (proxies.length != 1 || proxies.single['protocol'] != 'vless') {
    throw FormatException('Profile $index: expected one VLESS outbound');
  }
  final outbound = proxies.single;
  _only(outbound, ['protocol', 'tag', 'settings', 'streamSettings']);
  final settings = _map(outbound['settings']);
  _only(settings, ['vnext']);
  final peer = _single(settings['vnext']);
  _only(peer, ['address', 'port', 'users']);
  final user = _single(peer['users']);
  _only(user, ['id', 'encryption', 'flow']);
  final host = _text(peer, 'address');
  final port = peer['port'];
  final id = _text(user, 'id');
  if (host.isEmpty ||
      port is! int ||
      port < 1 ||
      port > 65535 ||
      !RegExp(
        r'^[\da-f]{8}(-[\da-f]{4}){3}-[\da-f]{12}$',
        caseSensitive: false,
      ).hasMatch(id) ||
      _text(user, 'encryption', fallback: 'none') != 'none') {
    throw FormatException('Profile $index: invalid or unsupported VLESS peer');
  }

  final stream = _map(outbound['streamSettings']);
  final network = _text(stream, 'network');
  if (_text(stream, 'security') != 'reality' ||
      !const ['tcp', 'xhttp'].contains(network)) {
    throw FormatException('Profile $index: expected TCP or XHTTP with REALITY');
  }
  _only(stream, [
    'network',
    'security',
    'realitySettings',
    '${network}Settings',
  ]);
  final reality = _map(stream['realitySettings']);
  _only(reality, [
    'serverName',
    'fingerprint',
    'publicKey',
    'shortId',
    'spiderX',
  ]);
  final query = <String, String>{
    'encryption': 'none',
    'security': 'reality',
    'type': network,
    'sni': _text(reality, 'serverName'),
    'fp': _text(reality, 'fingerprint'),
    'pbk': _text(reality, 'publicKey'),
    'sid': _text(reality, 'shortId'),
  };
  if (query['pbk']!.isEmpty)
    throw const FormatException('Missing REALITY public key');
  final spider = _text(reality, 'spiderX');
  if (spider.isNotEmpty) query['spx'] = spider;
  final flow = _text(user, 'flow');
  if (flow.isNotEmpty) query['flow'] = flow;

  if (network == 'xhttp') {
    final transport = _map(stream['xhttpSettings']);
    _only(transport, ['host', 'path', 'mode', 'extra']);
    query['path'] = _text(transport, 'path');
    final xhttpHost = _text(transport, 'host');
    if (xhttpHost.isNotEmpty) query['host'] = xhttpHost;
    final mode = _text(transport, 'mode');
    if (mode.isNotEmpty) query['mode'] = mode;
    final extra = transport['extra'];
    if (extra != null) query['extra'] = jsonEncode(_map(extra));
  } else {
    final transport = _map(stream['tcpSettings'] ?? const {});
    _only(transport, ['header']);
    final header = _map(transport['header'] ?? const {});
    // Xray does not use the request template when the header type is none.
    _only(header, ['type', 'request']);
    if (_text(header, 'type', fallback: 'none') != 'none') {
      throw const FormatException('Unsupported TCP header');
    }
  }

  final remarks = _text(profile, 'remarks');
  return Uri(
    scheme: 'vless',
    userInfo: id,
    host: host,
    port: port,
    queryParameters: query,
    fragment: remarks.isEmpty ? 'Xray profile $index' : remarks,
  );
}

Map _map(Object? value) {
  if (value is Map) return value;
  throw const FormatException('Expected an object');
}

Map _single(Object? value) {
  if (value is List && value.length == 1) return _map(value.single);
  throw const FormatException('Expected exactly one peer or user');
}

void _only(Map map, List<String> fields) {
  if (map.keys.any((key) => !fields.contains(key))) {
    throw const FormatException('Unsupported outbound settings');
  }
}

String _text(Map map, String field, {String fallback = ''}) {
  final value = map[field] ?? fallback;
  if (value is String) return value;
  throw FormatException('Expected a string for $field');
}
