import 'package:intl/intl.dart';

extension TimeDifference on DateTime {
  String getDay({String chatSeparatorDatePattern = 'dd MMM yyyy'}) {
    final differenceInDays = difference(DateTime.now()).inDays;
    if (differenceInDays == 0) {
      return 'Today';
    } else if (differenceInDays <= 1 && differenceInDays >= -1) {
      return 'Yesterday';
    } else {
      final DateFormat formatter = DateFormat(chatSeparatorDatePattern);
      return formatter.format(this);
    }
  }
}
