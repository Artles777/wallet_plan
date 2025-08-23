import "package:intl/intl.dart";

class PeriodDTO {
  PeriodDTO({required this.period, required this.index});

  final String period;
  final int index;
}

List<PeriodDTO> getWeek({int week = 7}) {
  return List.generate(
    week,
    (i) => PeriodDTO(
      period: DateFormat.E().format(DateTime.now()
          .subtract(Duration(days: DateTime.now().weekday - 1))
          .add(Duration(days: i))),
      index: i,
    ),
  );
}

List<PeriodDTO> getMonths({int months = 12}) {
  return List.generate(
    months,
    (i) => PeriodDTO(
      period: DateFormat.MMM().format(DateTime(DateTime.now().year, i + 1)),
      index: i,
    ),
  );
}

List<PeriodDTO> getYears({int years = 4}) {
  return List.generate(
    years,
    (i) => PeriodDTO(
      period: DateFormat.y().format(
        DateTime(DateTime.now().year + i + 1 - years),
      ),
      index: i,
    ),
  );
}
