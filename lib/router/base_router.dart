import "package:flutter/cupertino.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/core/builders_page/builder_base_widget.dart";
import "package:wallet_plan/helpers/enums/router_enums.dart";
import "package:wallet_plan/router/drawer/drawer_router.dart";
import "package:wallet_plan/router/home/home_router.dart";
import "package:wallet_plan/screens/analytic_screen.dart";
import "package:wallet_plan/screens/history_screen.dart";
import "package:wallet_plan/screens/home_screen.dart";
import "package:wallet_plan/screens/plans_screen.dart";

class BaseRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: "/${RouterNames.home}",
    routes: [
      GoRoute(
        path: "/${RouterNames.home}",
        name: "${RouterNames.home}",
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildBaseWidgetNotAnimation(
          child: const HomeScreen(),
        ),
        routes: [...HomeRouter.homeRouteList],
      ),
      GoRoute(
        path: "/${RouterNames.history}",
        name: "${RouterNames.history}",
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildBaseWidgetNotAnimation(
          child: const HistoryScreen(),
        ),
      ),
      GoRoute(
        path: "/${RouterNames.analytic}",
        name: "${RouterNames.analytic}",
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildBaseWidgetNotAnimation(
          child: const AnalyticScreen(),
        ),
      ),
      GoRoute(
        path: "/${RouterNames.plans}",
        name: "${RouterNames.plans}",
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildBaseWidgetNotAnimation(
          child: const PlansScreen(),
        ),
      ),
      ...DrawerRouter.drawerRouterList,
    ],
  );

  static GoRouter get routerList => _router;
}
