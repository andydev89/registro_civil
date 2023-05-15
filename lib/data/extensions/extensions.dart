import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  int get lastDayOfMonth => DateTime(year, month + 1, 0).day;

  DateTime get lastDateOfMonth => DateTime(year, month + 1, 0);

  String get onlyDate => DateFormat('yyyy-MM-dd').format(this);

  String get onlyTime => DateFormat('HH:mm').format(this);
}
