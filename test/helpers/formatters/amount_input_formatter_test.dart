import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/formatters/amount_input_formatter.dart";

void main() {
  group("AmountInputFormatter", () {
    final formatter = AmountInputFormatter();

    test("allows integer and two-decimal values", () {
      expect(
        formatter
            .formatEditUpdate(
              TextEditingValue.empty,
              const TextEditingValue(text: "125"),
            )
            .text,
        "125",
      );

      expect(
        formatter
            .formatEditUpdate(
              const TextEditingValue(text: "12.3"),
              const TextEditingValue(text: "12.34"),
            )
            .text,
        "12.34",
      );
    });

    test("rejects values with more than two decimal digits", () {
      expect(
        formatter
            .formatEditUpdate(
              const TextEditingValue(text: "12.34"),
              const TextEditingValue(text: "12.345"),
            )
            .text,
        "12.34",
      );
    });
  });
}
