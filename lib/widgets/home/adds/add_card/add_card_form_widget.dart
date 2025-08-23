import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/base.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/store/home/adds/add_card_state.dart";
import "package:wallet_plan/widgets/commons/custom_dropdown_menu.dart";

class AddCardFormWidget extends StatelessWidget {
  const AddCardFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    final baseState = Provider.of<BaseState>(context);
    final AddCardState addCardState = state.adds.addCard;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: PrimaryColors.primary99,
                ),
                child: SafeArea(
                  minimum: const EdgeInsets.only(
                    top: 20.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Observer(
                    builder: (_) => Column(
                      children: [
                        TextField(
                          onChanged: (value) => addCardState.changeTitle(value),
                          controller: addCardState.titleTextController,
                          maxLength: 20,
                          decoration: InputDecoration(
                            labelText: "Название",
                            hintText: "Новый счет",
                            counter: Observer(
                              builder: (_) =>
                                  Text("${addCardState.titleCount}/20"),
                            ),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownMenu(
                                controller: addCardState.typeSelectController,
                                dropdownMenuEntries: addCardState.types,
                                label: const Text("Тип"),
                                initialSelection: TypeCardEnum.card,
                                width: MediaQuery.of(context).size.width / 2.3,
                                onSelected: (value) =>
                                    addCardState.changeType(value!),
                              ),
                              DropdownMenu(
                                controller:
                                    addCardState.currencySelectController,
                                dropdownMenuEntries: addCardState.currencies,
                                label: const Text("Валюта"),
                                enableSearch: false,
                                enableFilter: false,
                                initialSelection: CurrencyCardEnum.rub,
                                width: MediaQuery.of(context).size.width / 2.3,
                                onSelected: (value) =>
                                    addCardState.changeCurrency(value!),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: DropdownMenu(
                            controller: addCardState.bankSelectController,
                            dropdownMenuEntries: addCardState.banks,
                            label: const Text("Банк"),
                            initialSelection: BanksEnum.none,
                            width: MediaQuery.of(context).size.width - 32,
                            onSelected: (value) =>
                                addCardState.changeBank(value!),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: TextField(
                            onChanged: (value) =>
                                addCardState.changeBalance(value),
                            controller: addCardState.balanceNumberController,
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            decoration: const InputDecoration(
                              labelText: "Баланс",
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Row(
                            children: [
                              Switch(
                                thumbIcon: addCardState.balanceThumbIcon,
                                value: addCardState.commonBalance,
                                onChanged: addCardState.changeCommonBalance,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, right: 4),
                                child: Text("Добавить в общий баланс"),
                              ),
                              const Tooltip(
                                triggerMode: TooltipTriggerMode.tap,
                                message: "Подсказка для баланса",
                                child: Icon(Icons.help_outline),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Row(
                            children: [
                              Switch(
                                thumbIcon: addCardState.syncBankThumbIcon,
                                value: addCardState.syncBank,
                                onChanged: baseState.premiumAccount
                                    ? addCardState.changeSyncBank
                                    : null,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, right: 4),
                                child: Text("Включить синхронизацию банка"),
                              ),
                              const Tooltip(
                                triggerMode: TooltipTriggerMode.tap,
                                message: "Подсказка для синхронизации банка",
                                child: Icon(Icons.help_outline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
