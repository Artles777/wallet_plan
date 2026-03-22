import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/formatters/date_range_formatter.dart";

void main() {
  test("dateRangeFormatter formats a range with the default pattern", () {
    final result = dateRangeFormatter(
      DateTime(2024, 1, 5),
      DateTime(2024, 2, 10),
    );

    expect(result, "05.01.2024 – 10.02.2024");
  });

  test("dateRangeFormatter formats a range with a custom pattern", () {
    final result = dateRangeFormatter(
      DateTime(2024, 1, 5),
      DateTime(2024, 2, 10),
      pattern: "yyyy/MM/dd",
    );

    expect(result, "2024/01/05 – 2024/02/10");
  });
}
