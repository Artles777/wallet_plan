import "package:flutter/material.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/widgets/commons/buttons/action_button_widget.dart";

class AddCardBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AddCardBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: PrimaryColors.primary90,
      title: const Text(
        "Новый счёт",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      actions: [ActionButtonWidget(onPressed: () => {})],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
