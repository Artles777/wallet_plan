import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/store/base/base_bottom_tabs.dart";
import "package:wallet_plan/store/home/home_cards.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";
import "package:wallet_plan/store/home/home_finance.dart";

import "../support/pump_helpers.dart";

void main() {
  testWidgets("BaseBottomTabsState navigates to the selected tab", (
    tester,
  ) async {
    final state = BaseBottomTabsState();
    final router = GoRouter(
      initialLocation: "/${RouterNames.home}",
      routes: [
        GoRoute(
          path: "/${RouterNames.home}",
          name: "${RouterNames.home}",
          builder: (context, routeState) => Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => state.navigateToTabs(context, 2),
                child: const Text("navigate-tabs"),
              ),
            ),
          ),
        ),
        GoRoute(
          path: "/${RouterNames.history}",
          name: "${RouterNames.history}",
          builder: (_, state) => const Text("history-screen"),
        ),
        GoRoute(
          path: "/${RouterNames.analytic}",
          name: "${RouterNames.analytic}",
          builder: (_, state) => const Text("analytic-screen"),
        ),
        GoRoute(
          path: "/${RouterNames.plans}",
          name: "${RouterNames.plans}",
          builder: (_, state) => const Text("plans-screen"),
        ),
      ],
    );

    await pumpRouterApp(tester, router);
    await tester.tap(find.text("navigate-tabs"));
    await tester.pumpAndSettle();

    expect(find.text("analytic-screen"), findsOneWidget);
    expect(state.currentIndex, 2);
  });

  testWidgets("HomeCardsState navigates to add card and edit account screens", (
    tester,
  ) async {
    final state = HomeCardsState();
    final router = GoRouter(
      initialLocation: "/${RouterNames.home}",
      routes: [
        GoRoute(
          path: "/${RouterNames.home}",
          name: "${RouterNames.home}",
          builder: (context, routeState) => Scaffold(
            body: Column(
              children: [
                ElevatedButton(
                  onPressed: () => state.navigateNewCardAddScreen(context),
                  child: const Text("open-add-card"),
                ),
                ElevatedButton(
                  onPressed: () => state.navigateEditAccountScreen(context),
                  child: const Text("open-edit-account"),
                ),
              ],
            ),
          ),
          routes: [
            GoRoute(
              path: "${HomeRouterNames.addCard}",
              name: "${HomeRouterNames.addCard}",
              builder: (_, state) => const Text("add-card-screen"),
            ),
            GoRoute(
              path: "${HomeRouterNames.editAccount}",
              name: "${HomeRouterNames.editAccount}",
              builder: (_, state) => const Text("edit-account-screen"),
            ),
          ],
        ),
      ],
    );

    await pumpRouterApp(tester, router);

    await tester.tap(find.text("open-add-card"));
    await tester.pumpAndSettle();
    expect(find.text("add-card-screen"), findsOneWidget);

    router.go("/${RouterNames.home}");
    await tester.pumpAndSettle();

    await tester.tap(find.text("open-edit-account"));
    await tester.pumpAndSettle();
    expect(find.text("edit-account-screen"), findsOneWidget);
  });

  testWidgets("HomeFinanceState navigates with transaction type extras", (
    tester,
  ) async {
    final state = HomeFinanceState();
    final router = GoRouter(
      initialLocation: "/${RouterNames.home}",
      routes: [
        GoRoute(
          path: "/${RouterNames.home}",
          name: "${RouterNames.home}",
          builder: (context, routeState) => Scaffold(
            body: Column(
              children: [
                ElevatedButton(
                  onPressed: () => state.navigateIncomeScreen(context),
                  child: const Text("open-income"),
                ),
                ElevatedButton(
                  onPressed: () => state.navigateExpenseScreen(context),
                  child: const Text("open-expense"),
                ),
              ],
            ),
          ),
          routes: [
            GoRoute(
              path: "${HomeRouterNames.transactions}",
              name: "${HomeRouterNames.transactions}",
              builder: (_, routeState) =>
                  Text("transaction-${routeState.extra}"),
            ),
          ],
        ),
      ],
    );

    await pumpRouterApp(tester, router);

    await tester.tap(find.text("open-income"));
    await tester.pumpAndSettle();
    expect(
      find.text("transaction-${TransactionNameEnum.income}"),
      findsOneWidget,
    );

    router.go("/${RouterNames.home}");
    await tester.pumpAndSettle();

    await tester.tap(find.text("open-expense"));
    await tester.pumpAndSettle();
    expect(
      find.text("transaction-${TransactionNameEnum.expense}"),
      findsOneWidget,
    );
  });

  testWidgets("HomeChartState opens chart settings route", (tester) async {
    final state = HomeChartState();
    final router = GoRouter(
      initialLocation: "/${RouterNames.home}",
      routes: [
        GoRoute(
          path: "/${RouterNames.home}",
          name: "${RouterNames.home}",
          builder: (context, routeState) => Scaffold(
            body: ElevatedButton(
              onPressed: () => state.openChartSettings(context),
              child: const Text("open-chart-settings"),
            ),
          ),
          routes: [
            GoRoute(
              path: "${HomeRouterNames.editCharts}",
              name: "${HomeRouterNames.editCharts}",
              builder: (_, state) => const Text("edit-charts-screen"),
            ),
          ],
        ),
      ],
    );

    await pumpRouterApp(tester, router);
    await tester.tap(find.text("open-chart-settings"));
    await tester.pumpAndSettle();

    expect(find.text("edit-charts-screen"), findsOneWidget);
  });
}
