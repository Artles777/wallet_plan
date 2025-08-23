import "package:mobx/mobx.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";

part "home_panel_state.g.dart";

class HomePanelState = _HomePanelState with _$HomePanelState;

abstract class _HomePanelState with Store {
  final chart = HomeChartState();
}
