import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/screens/home/add_card_screen.dart";
import "package:wallet_plan/screens/home/edit_account_screen.dart";
import "package:wallet_plan/screens/home/edit_charts_screen.dart";
import "package:wallet_plan/screens/home/transactions_screen.dart";

class HomeRouter {
  static final _homeRouteList = [
    GoRoute(
      path: "${HomeRouterNames.addCard}",
      name: "${HomeRouterNames.addCard}",
      builder: (BuildContext context, GoRouterState state) =>
          const AddCarsScreen(),
    ),
    GoRoute(
      path: "${HomeRouterNames.transactions}",
      name: "${HomeRouterNames.transactions}",
      builder: (BuildContext context, GoRouterState state) =>
          TransactionsScreen(typeScreen: state.extra as TransactionNameEnum),
    ),
    GoRoute(
      path: "${HomeRouterNames.editAccount}",
      name: "${HomeRouterNames.editAccount}",
      builder: (BuildContext context, GoRouterState state) =>
          const EditAccountScreen(),
    ),
    GoRoute(
      path: "${HomeRouterNames.editCharts}",
      name: "${HomeRouterNames.editCharts}",
      builder: (BuildContext context, GoRouterState state) =>
          const EditChartsScreen(),
    ),
  ];

  static List<GoRoute> get homeRouteList => _homeRouteList;
}
