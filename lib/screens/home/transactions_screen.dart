import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/base.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/widgets/home/adds/transactions/transactions_bar_widget.dart";
import "package:wallet_plan/widgets/home/adds/transactions/transactions_form_widget.dart";

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({
    required this.typeScreen,
    super.key,
  });

  final TransactionNameEnum typeScreen;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider<HomeState>(create: (_) => HomeState()),
          Provider<BaseState>(create: (_) => BaseState()),
        ],
        child: Scaffold(
          backgroundColor: PrimaryColors.primary90,
          appBar: TransactionsBarWidget(typeScreen: typeScreen),
          body: const TransactionsFormWidget(),
        ),
      );
}
