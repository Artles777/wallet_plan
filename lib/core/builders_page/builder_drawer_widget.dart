import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:wallet_plan/core/builders_page/builder_base_widget.dart";

CustomTransitionPage buildDrawerWidget({
  required Scaffold child,
}) {
  // child.appBar = AppBar();
  return buildBaseWidgetNotAnimation(child: child);
}