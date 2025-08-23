import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/widgets/commons/wrappers/screen_wrapper.dart";
import "package:wallet_plan/widgets/home/home_panel_widget.dart";
import 'package:wallet_plan/widgets/home/home_finance_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Provider<HomeState>(
        create: (_) => HomeState(),
        child: const ScreenWrapper(
          children: [
            HomeFinanceWidget(),
            HomePanelWidget(),
          ],
        ),
      );
}
