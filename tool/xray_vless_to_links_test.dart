import 'dart:convert';

import '../lib/app/subscription/xray_vless_links.dart';

void main() {
  final tcp = profile();
  final xhttp = profile(xhttp: true);
  final links = convertXrayVlessProfiles(jsonEncode([tcp, xhttp]));
  check(links.length == 2, 'one link per profile');
  final first = Uri.parse(links.first.toString());
  check(first.scheme == 'vless' && first.port == 443, 'VLESS authority');
  check(first.userInfo == '00000000-0000-4000-8000-000000000001', 'UUID');
  check(first.host == '2001:db8::1', 'IPv6 authority');
  check(
    Uri.decodeComponent(first.fragment) == 'Node #1 / نمونه',
    'Unicode label',
  );
  check(first.queryParameters['flow'] == 'xtls-rprx-vision', 'TCP flow');
  check(first.queryParameters['security'] == 'reality', 'REALITY security');
  check(first.queryParameters['pbk'] == 'example-key', 'REALITY public key');
  check(first.queryParameters['spx'] == '/?x=a+b', 'REALITY spiderX');
  final second = Uri.parse(links.last.toString()).queryParameters;
  check(second['type'] == 'xhttp', 'XHTTP transport');
  check(
    second['path'] == '/a?b=c+d' && second['mode'] == 'packet-up',
    'XHTTP path and mode',
  );
  check(second['host'] == 'edge.example.test', 'XHTTP host');
  check(
    jsonDecode(second['extra']!)['xmux']['maxConcurrency'] == '1-4',
    'nested XHTTP extras',
  );
  check(
    convertXrayVlessProfiles(jsonEncode(tcp)).length == 1,
    'single profile',
  );

  final chained = profile();
  (chained['outbounds'] as List).first['proxySettings'] = {'tag': 'other'};
  for (final value in [
    [],
    [tcp, chained],
    {
      'outbounds': [
        {'type': 'vless'},
      ],
    },
  ]) {
    try {
      convertXrayVlessProfiles(jsonEncode(value));
      throw StateError('accepted unsupported input');
    } on FormatException {
      // Expected: do not produce misleading partial output.
    }
  }
  check(
    tryConvertXrayVlessSubscription('  ${jsonEncode([tcp, xhttp])}') ==
        links.join('\n'),
    'fallback returns newline-separated share links',
  );
  for (final body in [
    'vless://existing',
    'proxies: []',
    '{invalid JSON',
    jsonEncode({
      'outbounds': [
        {'type': 'vless'},
      ],
    }),
    jsonEncode([tcp, chained]),
  ]) {
    check(
      tryConvertXrayVlessSubscription(body) == null,
      'fallback ignores $body',
    );
  }
  print('Xray VLESS converter tests passed');
}

void check(bool condition, String message) {
  if (!condition) throw StateError(message);
}

Map<String, Object> profile({bool xhttp = false}) => {
  'remarks': 'Node #1 / نمونه',
  'outbounds': [
    {
      'protocol': 'vless',
      'settings': {
        'vnext': [
          {
            'address': '2001:db8::1',
            'port': 443,
            'users': [
              {
                'id': '00000000-0000-4000-8000-000000000001',
                'encryption': 'none',
                if (!xhttp) 'flow': 'xtls-rprx-vision',
              },
            ],
          },
        ],
      },
      'streamSettings': {
        'network': xhttp ? 'xhttp' : 'tcp',
        'security': 'reality',
        'realitySettings': {
          'publicKey': 'example-key',
          'shortId': 'abcd',
          'fingerprint': 'chrome',
          'serverName': 'example.test',
          'spiderX': '/?x=a+b',
        },
        if (xhttp)
          'xhttpSettings': {
            'host': 'edge.example.test',
            'path': '/a?b=c+d',
            'mode': 'packet-up',
            'extra': {
              'xmux': {'maxConcurrency': '1-4'},
            },
          }
        else
          'tcpSettings': {
            'header': {
              'type': 'none',
              'request': {
                'path': ['/unused'],
              },
            },
          },
      },
    },
    {'protocol': 'freedom'},
    {'protocol': 'blackhole'},
  ],
};
