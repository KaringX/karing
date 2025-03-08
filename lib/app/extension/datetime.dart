import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formatLikehourMinute {
    return DateFormat('HH:mm').format(this);
  }

  String get formatLikeFileNameTimestamp {
    const format = 'yyyy-MM-dd-HHmm';
    return DateFormat(format).format(this);
  }
}
