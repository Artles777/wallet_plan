import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:wallet_plan/helpers/formatters/amount_input_formatter.dart';
import 'package:wallet_plan/helpers/variables/sizes.dart';
import 'package:wallet_plan/store/home.dart';

class TransactionsAmountField extends StatelessWidget {
  const TransactionsAmountField({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    final transactionsState = state.adds.transactions;

    return Row(
      children: [
        ReactionBuilder(
          builder: (context) => autorun(
                (_) {
              transactionsState.focusAmountField();
              transactionsState.datepickerController
                  .selectedDate = DateTime.now();
            },
          ),
          child: Expanded(
            child: Focus(
              onFocusChange: (focus) {
                if (!focus &&
                    transactionsState
                        .amountController.text.isEmpty) {
                  transactionsState.completeEditingAmount();
                }
              },
              child: TextField(
                onChanged: transactionsState.changeAmount,
                onEditingComplete:
                transactionsState.completeEditingAmount,
                onTap: () {
                  if (!transactionsState
                      .amountFocusNode.hasFocus) {
                    transactionsState.amountController.text =
                    "";
                  }
                },
                keyboardType:
                const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"^(0\.?\d?\d?)|[1-9]\d*\.?"),
                  ),
                  AmountInputFormatter(),
                ],
                focusNode: transactionsState.amountFocusNode,
                controller:
                transactionsState.amountController,
                decoration: const InputDecoration(
                  labelText: "Сумма",
                  hintText: "0.00",
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
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            onPressed: transactionsState.openQrCode,
            iconSize: IconSizes.large,
            icon: const Icon(Icons.qr_code_scanner),
          ),
        )
      ],
    );
  }
}
