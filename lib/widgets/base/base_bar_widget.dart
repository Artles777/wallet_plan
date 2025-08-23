import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/base.dart";
import "package:wallet_plan/widgets/home/bar/actions_widget.dart";

class BaseBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const BaseBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final baseState = Provider.of<BaseState>(context);
    final barState = baseState.bar;

    return AppBar(
      centerTitle: true,
      backgroundColor: PrimaryColors.primary90,
      iconTheme: const IconThemeData(color: SecondaryColors.secondary10),
      title: TextButton(
        onPressed: () => Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: MediaQuery.of(context).size.width / 3,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // TODO: Добавить datepicker
            // child: CustomDatepicker(
            //   controller: transactionsState.datepickerController,
            //   onSubmit: (value) => transactionsState.changeDate(value),
            // ),
          ),
        ),
        child: Text(
          barState.dateRange,
          style: const TextStyle(fontSize: 16, color: PrimaryColors.primary20),
        ),
      ),
      actions: [
        ActionButton(iconName: Icons.search, handler: barState.searchHandler),
        ActionButton(
          iconName: Icons.notifications_none,
          handler: barState.openNotifications,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
