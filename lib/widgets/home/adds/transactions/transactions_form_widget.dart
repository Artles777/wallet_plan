import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/base.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/widgets/commons/custom_datepicker.dart";
import "package:wallet_plan/widgets/home/adds/transactions/fields/transactions_amount_field.dart";

class TransactionsFormWidget extends StatelessWidget {
  const TransactionsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    final baseState = Provider.of<BaseState>(context);
    final transactionsState = state.adds.transactions;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: PrimaryColors.primary99),
                child: SafeArea(
                  minimum: const EdgeInsets.only(
                    top: 20.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Column(
                    children: [
                      const TransactionsAmountField(),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Observer(
                          builder: (_) => DropdownMenu(
                            controller: transactionsState.categoriesController,
                            dropdownMenuEntries: transactionsState.categories,
                            label: const Text("Категория"),
                            initialSelection: transactionsState.initialCategory,
                            width: MediaQuery.of(context).size.width,
                            onSelected: (value) =>
                                transactionsState.changeCategory(value!),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownMenu(
                              controller: transactionsState.cardController,
                              dropdownMenuEntries: transactionsState.cardsList,
                              label: const Text("Счет"),
                              initialSelection: transactionsState.initialCard,
                              width: MediaQuery.of(context).size.width / 2.3,
                              onSelected: (value) =>
                                  transactionsState.changeCard(value!),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Observer(
                                  builder: (_) => TextField(
                                    controller:
                                        transactionsState.dateController,
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog(
                                          insetPadding: EdgeInsets.symmetric(
                                            horizontal: 24,
                                            vertical:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width /
                                                3,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomDatepicker(
                                              controller: transactionsState
                                                  .datepickerController,
                                              onSubmit: (value) =>
                                                  transactionsState.changeDate(
                                                    value,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    keyboardType: TextInputType.none,
                                    showCursor: false,
                                    enableInteractiveSelection: false,
                                    decoration: const InputDecoration(
                                      labelText: "Дата",
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: TextField(
                          onChanged: transactionsState.changeComment,
                          controller: transactionsState.commentController,
                          decoration: const InputDecoration(
                            labelText: "Комментарий",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Row(
                          children: [
                            Observer(
                              builder: (_) => Switch(
                                thumbIcon:
                                    transactionsState.repeatOperationIcon,
                                value: transactionsState.repeatOperation,
                                onChanged:
                                    transactionsState.changeRepeatOperation,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12, right: 4),
                              child: Text("Повтор операции"),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Row(
                          children: [
                            Observer(
                              builder: (_) => Switch(
                                thumbIcon: transactionsState.notificationIcon,
                                value: transactionsState.notification,
                                onChanged: transactionsState.changeNotification,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12, right: 4),
                              child: Text("Добавить напоминание"),
                            ),
                            const Icon(
                              Icons.lock_outline,
                              color: PrimaryColors.primary40,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: TextField(
                          onChanged: transactionsState.changeReminder,
                          controller: transactionsState.reminderController,
                          decoration: const InputDecoration(
                            labelText: "Напоминание",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
