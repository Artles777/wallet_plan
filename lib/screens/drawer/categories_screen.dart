import "package:flutter/material.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/helpers/variables/colors.dart";

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({required this.routeName, super.key});

  final DrawerRoutes routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.primary90,
    );
  }
}
