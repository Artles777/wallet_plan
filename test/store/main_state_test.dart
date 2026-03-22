import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/helpers/enums/store_enums.dart";
import "package:wallet_plan/store/main.dart";

void main() {
  test("MainState toggles theme between light and dark", () {
    final state = MainState();

    expect(state.theme, ThemeEnum.light);

    state.changeTheme();
    expect(state.theme, ThemeEnum.dark);

    state.changeTheme();
    expect(state.theme, ThemeEnum.light);
  });
}
