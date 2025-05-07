import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

abstract class AssetsUtils {
  static Future<bool> copyTo(String key, String savePath) async {
    final bytes = await rootBundle.load(key);
    final file = File(savePath);
    await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
    return await file.exists();
  }

  static String userAgreementPath() {
    return 'assets/txts/user_agreement_en.txt';
  }

  static String privacyPolicyPath() {
    return 'assets/txts/privacy_policy_en.txt';
  }

  static Future<String> loadUserAgreement() async {
    try {
      return await rootBundle.loadString(userAgreementPath(), cache: false);
    } catch (err) {
      return "loading user_agreement_en.txt failed: $err";
    }
  }
}
