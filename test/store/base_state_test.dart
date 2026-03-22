import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/store/base.dart";
import "package:wallet_plan/store/base/base_bar.dart";
import "package:wallet_plan/store/base/base_bottom_tabs.dart";

void main() {
  test("BaseState exposes base stores and default premium flag", () {
    final state = BaseState();

    expect(state.bar, isA<BaseBarState>());
    expect(state.bottomTabs, isA<BaseBottomTabsState>());
    expect(state.premiumAccount, isFalse);
  });
}
