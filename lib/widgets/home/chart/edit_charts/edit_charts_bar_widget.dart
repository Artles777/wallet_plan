import "package:flutter/material.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/main.dart";
import "package:wallet_plan/widgets/commons/buttons/action_button_widget.dart";

class EditChartsBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const EditChartsBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: PrimaryColors.primary90,
      title: Text(
        context.l10n.settings_charts,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      actions: [ActionButtonWidget(title: "Сохранить", onPressed: () => {})],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
