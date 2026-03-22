import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/store/history.dart";
import "package:wallet_plan/store/history/history_panel.dart";

void main() {
  testWidgets("HistoryState computes panel size and can focus search", (
    tester,
  ) async {
    late HistoryState state;
    late BuildContext context;

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(390, 844),
        child: MaterialApp(
          home: Builder(
            builder: (builderContext) {
              context = builderContext;
              state = HistoryState();
              return Scaffold(
                body: TextField(focusNode: state.searchFocusNode),
              );
            },
          ),
        ),
      ),
    );

    await tester.pump();

    expect(state.minSizePanelHistory, state.layoutSize - state.cardsSize);
    expect(state.cards.cardsList.length, 3);
    expect(state.panel.historyList.length, 4);
    expect(iconsMap["restaurant"], Icons.restaurant);

    state.setFocusSearch(context);
    await tester.pump();

    expect(state.searchFocusNode.hasFocus, isTrue);
  });
}
