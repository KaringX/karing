import 'package:karing/app/utils/log.dart';

abstract final class DateTimeUtils {
  static String? millisecondSecondsToDate(int ms) {
    try {
      var date = DateTime.fromMillisecondsSinceEpoch(ms);
      return dateOnlyString(date);
    } catch (err) {
      Log.w("DateTime.fromMillisecondsSinceEpoch exception: ${err.toString()}");
      return null;
    }
  }

  static String dateTimeToDate(String dt) {
    var date = DateTime.tryParse(dt);
    if (date == null) {
      return '';
    }
    return dateOnlyString(date);
  }

  static String dateOnlyString(DateTime date) {
    var expireStr = date.toString();
    if (expireStr.contains(' ')) {
      return expireStr.split(' ')[0];
    }
    return '';
  }
}
