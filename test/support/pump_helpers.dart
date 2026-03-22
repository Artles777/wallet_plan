import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_test/flutter_test.dart";
import "package:go_router/go_router.dart";

Future<T> pumpScreenUtilState<T>(
  WidgetTester tester,
  T Function() create,
) async {
  T? state;

  await tester.pumpWidget(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      child: MaterialApp(
        home: Builder(
          builder: (_) {
            state ??= create();
            return const SizedBox.shrink();
          },
        ),
      ),
    ),
  );

  await tester.pumpAndSettle();
  return state as T;
}

Future<void> pumpRouterApp(WidgetTester tester, GoRouter router) async {
  await tester.pumpWidget(MaterialApp.router(routerConfig: router));
  await tester.pumpAndSettle();
}
