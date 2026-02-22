// Support for encrypted subscription (AES-128-CBC).
// See: https://github.com/KaringX/karing/issues/1346
// When response header subscription-encryption = true, decrypt with user password.

import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';

/// HTTP response header for subscription encryption (same as v2rayN / flclash)
const String subscriptionEncryptionHeader = 'subscription-encryption';
const String aesEncryptionValue = 'true';

/// Check if response headers indicate AES-encrypted subscription
bool isSubscriptionEncrypted(String? headerValue) {
  if (headerValue == null || headerValue.isEmpty) return false;
  return headerValue.trim().toLowerCase() == aesEncryptionValue;
}

/// Try to decrypt subscription content (AES-128-CBC).
/// Key: MD5(password) as 32-char hex -> 16 bytes
/// IV: first 16 bytes of base64 decoded data
/// Cipher: bytes 16.. of base64 decoded data
Uint8List? tryDecryptSubscription(String password, String base64Data) {
  if (base64Data.isEmpty || password.isEmpty) return null;

  final passHash = md5.convert(utf8.encode(password)).toString();
  if (passHash.length != 32) return null;

  Uint8List keyBytes;
  try {
    keyBytes = Uint8List.fromList(
      List.generate(
        16,
        (i) => int.parse(passHash.substring(i * 2, i * 2 + 2), radix: 16),
      ),
    );
  } catch (_) {
    return null;
  }

  Uint8List raw;
  try {
    final normalized =
        base64Data.trim().replaceAll('\n', '').replaceAll('\r', '');
    raw = base64Decode(normalized);
  } catch (_) {
    return null;
  }

  if (raw.length <= 16) return null;

  final iv = IV(raw.sublist(0, 16));
  final cipher = Encrypted(Uint8List.fromList(raw.sublist(16)));
  final key = Key(keyBytes);

  try {
    final encrypter =
        Encrypter(AES(key, mode: AESMode.cbc, padding: 'PKCS7'));
    final decrypted = encrypter.decrypt(cipher, iv: iv);
    final bytes = Uint8List.fromList(utf8.encode(decrypted));
    return bytes.isNotEmpty ? bytes : null;
  } catch (_) {
    return null;
  }
}

/// Exception when subscription is encrypted and password is required or wrong.
class SubscriptionEncryptedException implements Exception {
  const SubscriptionEncryptedException({this.passwordWrong = false});

  /// True when password was provided but decryption failed (wrong password)
  final bool passwordWrong;

  @override
  String toString() => passwordWrong
      ? 'SubscriptionEncryptedException(passwordWrong: true)'
      : 'SubscriptionEncryptedException(passwordRequired)';
}

/// Decrypt subscription response body if header indicates encryption.
/// Returns [body] unchanged when not encrypted; otherwise decrypts with [password].
/// Throws [SubscriptionEncryptedException] when encrypted and password missing or wrong.
Uint8List decryptSubscriptionResponse(
  String? encHeader,
  Uint8List body,
  String? password,
) {
  if (!isSubscriptionEncrypted(encHeader)) return body;
  if (password == null || password.isEmpty) {
    throw const SubscriptionEncryptedException(passwordWrong: false);
  }
  final base64Str = utf8.decode(body);
  final decrypted = tryDecryptSubscription(password, base64Str);
  if (decrypted == null) {
    throw const SubscriptionEncryptedException(passwordWrong: true);
  }
  return decrypted;
}
