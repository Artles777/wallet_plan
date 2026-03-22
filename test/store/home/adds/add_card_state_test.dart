import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/store/home/adds/add_card_state.dart";

void main() {
  group("AddCardState", () {
    test("builds dropdown data from enums", () {
      final state = AddCardState();

      expect(state.types.length, TypeCardEnum.values.length);
      expect(state.currencies.length, CurrencyCardEnum.values.length);
      expect(state.banks.length, BanksEnum.values.length);
      expect(state.types.first.label, "Карта");
      expect(state.currencies.first.label, "Рубль");
      expect(state.banks.first.label, "Без банка");
    });

    test("updates selected values and switch icons", () {
      final state = AddCardState();

      state.changeTitle("Новый счет");
      state.changeType(TypeCardEnum.deposit);
      state.changeCurrency(CurrencyCardEnum.eur);
      state.changeBalance("");
      state.changeCommonBalance(false);
      state.changeSyncBank(true);

      expect(state.title, "Новый счет");
      expect(state.titleCount, 10);
      expect(state.type, TypeCardEnum.deposit);
      expect(state.currency, CurrencyCardEnum.eur);
      expect(state.commonBalance, isFalse);
      expect(state.syncBank, isTrue);
      expect(
        state.balanceThumbIcon.resolve(<WidgetState>{})?.icon,
        Icons.close,
      );
      expect(
        state.syncBankThumbIcon.resolve(<WidgetState>{})?.icon,
        Icons.check,
      );
    });
  });
}
