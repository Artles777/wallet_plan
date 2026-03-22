import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";

void main() {
  group("HomeChartState", () {
    testWidgets("changes selected chart flags", (tester) async {
      final state = HomeChartState();

      expect(state.hasSelectedLiner, isTrue);
      expect(state.hasSelectedBar, isFalse);
      expect(state.hasSelectedPie, isFalse);

      state.changeViewChart(ChartSelected.bar);
      expect(state.hasSelectedLiner, isFalse);
      expect(state.hasSelectedBar, isTrue);
      expect(state.hasSelectedPie, isFalse);

      state.changeViewChart(ChartSelected.pie);
      expect(state.hasSelectedPie, isTrue);
    });

    testWidgets("scroll handler moves the category controller", (tester) async {
      final state = HomeChartState();

      await tester.pumpWidget(
        MaterialApp(
          home: SizedBox(
            width: 100,
            height: 100,
            child: SingleChildScrollView(
              controller: state.categoryScrollController,
              scrollDirection: Axis.horizontal,
              child: const SizedBox(width: 600, height: 100),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(state.categoryScrollController.hasClients, isTrue);

      expect(
        () => state.handlerScrollCategories(CategoryDirection.right),
        returnsNormally,
      );
      await tester.pumpAndSettle();

      expect(
        () => state.handlerScrollCategories(CategoryDirection.left),
        returnsNormally,
      );
      await tester.pumpAndSettle();
      expect(
        () => state.resetDraggableController(),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
