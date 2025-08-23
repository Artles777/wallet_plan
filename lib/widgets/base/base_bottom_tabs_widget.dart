import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/base.dart";

class BaseBottomTabsWidget extends StatelessWidget {
  const BaseBottomTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = Provider.of<BaseState>(context).bottomTabs;

    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: SecondaryColors.secondary70,
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(2, 0),
          )
        ],
      ),
      child: Observer(builder: (_) => NavigationBar(
        backgroundColor: PrimaryColors.primary99,
        surfaceTintColor: PrimaryColors.primary90,
        selectedIndex: tabs.currentIndex,
        onDestinationSelected: (index) => tabs.navigateToTabs(context, index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.monetization_on_outlined),
            selectedIcon: Icon(Icons.monetization_on),
            label: "Операции",
          ),
          NavigationDestination(
            icon: Icon(Icons.watch_later_outlined),
            selectedIcon: Icon(Icons.watch_later),
            label: "История",
          ),
          // TODO: next realise
          // NavigationDestination(
          //   icon: Icon(Icons.insert_chart_outlined),
          //   selectedIcon: Icon(Icons.insert_chart),
          //   label: "Аналитика",
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.date_range_outlined),
          //   selectedIcon: Icon(Icons.date_range),
          //   label: "Планы",
          // ),
        ],
      )),
    );
  }
}
