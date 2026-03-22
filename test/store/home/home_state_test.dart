import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/store/home.dart";

import "../../support/pump_helpers.dart";

void main() {
  testWidgets("HomeState computes sheet sizes and card projections", (
    tester,
  ) async {
    final state = await pumpScreenUtilState(tester, HomeState.new);

    expect(state.minSizeSheet, state.layoutSize - 250);
    expect(state.maxSizeSheet, state.layoutSize - 140);
    expect(state.maxHeightSheet, state.layoutSize - 215);
    expect(state.sizeSheet, state.minSizeSheet);
    expect(state.cardsList.map((item) => item.id), orderedEquals(["1", "2"]));
    expect(
      state.cardsList.map((item) => item.title),
      orderedEquals(["МИР", "МИР"]),
    );
    expect(state.luminanceColor(Colors.white), Colors.black);
    expect(state.luminanceColor(Colors.black), Colors.white);

    state.cards.isShowCards = false;

    expect(state.sizeSheet, state.maxSizeSheet);
  });
}
