import "package:mobx/mobx.dart";
import "package:moment_dart/moment_dart.dart";
import "package:wallet_plan/helpers/formatters/date_range_formatter.dart";

part "base_bar.g.dart";

class BaseBarState = _BaseBarState with _$BaseBarState;

abstract class _BaseBarState with Store {
  @observable
  DateTime dateStart = Moment.now() - const Duration(days: 7);

  @observable
  DateTime dateEnd = Moment.now();

  @computed
  String get dateRange => dateRangeFormatter(dateStart, dateEnd);

  @action
  void searchHandler() {
    print("search");
  }

  @action
  void openNotifications() {
    print("notifications");
  }

  @action
  void showCalendar() {
    print("show calendar");
  }
}
