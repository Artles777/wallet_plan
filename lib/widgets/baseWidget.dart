import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/widgets/base/base_bar_widget.dart";
import "package:wallet_plan/widgets/base/base_bottom_tabs_widget.dart";
import "package:wallet_plan/widgets/base/base_drawer_widget.dart";

class BaseWidget extends StatelessWidget {
  const BaseWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 0.6.sw,
        surfaceTintColor: SecondaryColors.secondary90,
        child: const BaseDrawerWidget(),
      ),
      appBar: const BaseBarWidget(),
      body: child,
      bottomNavigationBar: const BaseBottomTabsWidget(),
    );
  }
}
