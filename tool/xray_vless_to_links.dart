import 'dart:convert';
import 'dart:io';

import '../lib/app/subscription/xray_vless_links.dart';

Future<void> main(List<String> args) async {
  if (args.isNotEmpty) {
    stderr.writeln('Usage: dart tool/xray_vless_to_links.dart < profiles.json');
    exitCode = 64;
    return;
  }
  try {
    final links = convertXrayVlessProfiles(
      await stdin.transform(utf8.decoder).join(),
    );
    stdout.writeln(links.join('\n'));
  } on FormatException {
    // jsonDecode errors can include the original subscription and credentials.
    stderr.writeln('Invalid or unsupported Xray VLESS/REALITY subscription.');
    exitCode = 65;
  }
}
