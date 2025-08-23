import "package:intl/intl.dart";

String dateRangeFormatter(
  DateTime start,
  DateTime end, {
  String pattern = 'dd.MM.yyyy',
}) {
  final formatter = DateFormat(pattern);
  return "${formatter.format(start)} – ${formatter.format(end)}";
}
