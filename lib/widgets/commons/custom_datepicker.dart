import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:syncfusion_flutter_datepicker/datepicker.dart";

class CustomDatepicker extends StatelessWidget {
  const CustomDatepicker({
    super.key,
    this.controller,
    this.onSubmit,
    this.pattern = "dd.MM.yyyy",
    this.mode = DateRangePickerSelectionMode.single,
  });

  final DateRangePickerController? controller;
  final Function(String)? onSubmit;
  final String pattern;
  final DateRangePickerSelectionMode mode;

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      controller: controller,
      view: DateRangePickerView.month,
      monthViewSettings: const DateRangePickerMonthViewSettings(
        firstDayOfWeek: 1,
      ),
      showNavigationArrow: true,
      navigationDirection: DateRangePickerNavigationDirection.vertical,
      selectionMode: mode,
      showActionButtons: true,
      // backgroundColor: PrimaryColors.primary99,
      maxDate: DateTime.now(),
      onSubmit: (date) {
        if (onSubmit != null) {
          onSubmit!(DateFormat(pattern).format(date as DateTime));
        }
        Navigator.pop(context);
      },
      onCancel: () {
        Navigator.pop(context);
      },
    );
  }
}
