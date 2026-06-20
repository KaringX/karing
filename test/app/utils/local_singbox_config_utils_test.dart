import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:karing/app/utils/local_singbox_config_utils.dart';

void main() {
  group('LocalSingboxConfigUtils', () {
    test('defaultConfig includes a Tailscale endpoint and DNS server', () {
      final config = jsonDecode(LocalSingboxConfigUtils.defaultConfig());

      expect(config, isA<Map<String, dynamic>>());
      expect(
        config['endpoints'],
        contains(
          allOf(
            isA<Map>(),
            containsPair('type', 'tailscale'),
            containsPair('tag', 'tailscale'),
          ),
        ),
      );
      expect(
        config['dns']['servers'],
        contains(
          allOf(
            isA<Map>(),
            containsPair('type', 'tailscale'),
            containsPair('endpoint', 'tailscale'),
            containsPair('accept_default_resolvers', true),
          ),
        ),
      );
    });

    test('validate accepts full sing-box config top-level endpoints', () {
      final content = jsonEncode({
        'log': {'level': 'info'},
        'dns': {
          'servers': [
            {'type': 'local', 'tag': 'local'},
          ],
        },
        'endpoints': [
          {'type': 'tailscale', 'tag': 'tailscale'},
        ],
        'inbounds': [
          {'type': 'tun', 'tag': 'tun-in'},
        ],
        'outbounds': [
          {'type': 'direct', 'tag': 'direct'},
        ],
        'route': {'final': 'direct'},
      });

      expect(LocalSingboxConfigUtils.validate(content), isNull);
    });

    test('validate rejects invalid top-level shapes', () {
      expect(
        LocalSingboxConfigUtils.validate('[]')?.message,
        'sing-box config must be a JSON object',
      );
      expect(
        LocalSingboxConfigUtils.validate(
          jsonEncode({'endpoints': {}}),
        )?.message,
        'endpoints must be an array',
      );
      expect(
        LocalSingboxConfigUtils.validate(
          jsonEncode({
            'experimental': {'cache_file': []},
          }),
        )?.message,
        'experimental.cache_file must be an object',
      );
    });
  });
}
