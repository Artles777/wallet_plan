import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/screens/drawer/categories_screen.dart";

class DrawerRouter {
  static final _drawerRouterList = [
    GoRoute(
      path: "/${DrawerRoutes.categories}",
      name: "${DrawerRoutes.categories}",
      builder: (BuildContext context, GoRouterState state) =>
          CategoriesScreen(routeName: state.extra as DrawerRoutes),
    ),
  ];

  static List<GoRoute> get drawerRouterList => _drawerRouterList;
}
