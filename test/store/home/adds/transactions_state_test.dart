import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/store/home/adds/transactions_state.dart";

import "../../../support/pump_helpers.dart";

void main() {
  group("TransactionsState", () {
    testWidgets("exposes initial income form state", (tester) async {
      final state = await pumpScreenUtilState(tester, TransactionsState.new);

      expect(state.transactionName, TransactionNameEnum.income);
      expect(state.transactionConvertedName, "Доход");
      expect(state.hasIncome, isTrue);
      expect(state.initialCategory, "Зарплата");
      expect(
        state.categories.map((entry) => entry.label),
        orderedEquals(state.incomeList),
      );
      expect(
        state.cardsList.map((entry) => entry.value),
        orderedEquals(["1", "2"]),
      );
      expect(state.dateController.text, state.initialDate);
    });

    testWidgets("persists form changes and updates derived values", (
      tester,
    ) async {
      final state = await pumpScreenUtilState(tester, TransactionsState.new);

      state.changeAmount("123.456");
      state.changeCategory("Бизнес");
      state.changeCard("2");
      state.changeDate("05.02.2024");
      state.changeComment("Комментарий");
      state.changeRepeatOperation(true);
      state.changeNotification(true);
      state.changeReminder("Завтра");
      state.completeEditingAmount();

      expect(state.amount, 123.46);
      expect(state.category, "Бизнес");
      expect(state.cardId, "2");
      expect(state.dateController.text, "05.02.2024");
      expect(state.comment, "Комментарий");
      expect(state.repeatOperation, isTrue);
      expect(state.notification, isTrue);
      expect(state.reminder, "Завтра");
      expect(state.amountController.text, "123.46");
      expect(
        state.repeatOperationIcon.resolve(<WidgetState>{})?.icon,
        Icons.check,
      );
      expect(
        state.notificationIcon.resolve(<WidgetState>{})?.icon,
        Icons.check,
      );
    });

    testWidgets("switches derived transaction data for expense mode", (
      tester,
    ) async {
      final state = await pumpScreenUtilState(tester, TransactionsState.new);

      state.transactionName = TransactionNameEnum.expense;

      expect(state.transactionConvertedName, "Расход");
      expect(state.hasIncome, isFalse);
      expect(state.initialCategory, isNull);
      expect(
        state.categories.map((entry) => entry.label),
        orderedEquals(state.expenseList),
      );
    });

    testWidgets("focusAmountField and unfocusAmountField change focus state", (
      tester,
    ) async {
      late TransactionsState state;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (_) {
              state = TransactionsState();
              return Scaffold(
                body: TextField(focusNode: state.amountFocusNode),
              );
            },
          ),
        ),
      );

      await tester.pump();

      state.focusAmountField();
      await tester.pump();
      expect(state.amountFocusNode.hasFocus, isTrue);

      state.unfocusAmountField();
      await tester.pump();
      expect(state.amountFocusNode.hasFocus, isFalse);
    });
  });
}
