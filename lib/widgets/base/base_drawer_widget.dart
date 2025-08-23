import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/main.dart";
import "package:wallet_plan/widgets/base/drawer/auth_button_widget.dart";

class BaseDrawerWidget extends StatelessWidget {
  const BaseDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const AuthButtonWidget(),
          ...DrawerRoutes.values.map(
            (route) => TextButton(
              onPressed: () => context.goNamed("$route", extra: route),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(context.l10n.main_pages(route.name)),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
