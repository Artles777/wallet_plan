import "package:flutter_test/flutter_test.dart";
import "package:wallet_plan/store/base/base_bar.dart";

void main() {
  test("BaseBarState formats dateRange from current boundaries", () {
    final state = BaseBarState();

    state.dateStart = DateTime(2024, 3, 1);
    state.dateEnd = DateTime(2024, 3, 31);

    expect(state.dateRange, "01.03.2024 – 31.03.2024");
  });
}
