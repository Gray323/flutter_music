import 'package:intl/intl.dart';

class DateTimeUtils{
  static String formatDateTime(int timestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var formatter = DateFormat('MM/dd');
    return formatter.format(date);
  }
}