import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";
import "package:wallet_plan/widgets/home/chart/edit_charts/edit_charts_bar_widget.dart";
import "package:wallet_plan/widgets/home/chart/edit_charts/edit_charts_form_widget.dart";

class EditChartsScreen extends StatelessWidget {
  const EditChartsScreen({super.key});

  @override
  Widget build(BuildContext context) => Provider<HomeChartState>(
    create: (_) => HomeChartState(),
    child: const Scaffold(
      appBar: EditChartsBarWidget(),
      body: EditChartsFormWidget(),
    ),
  );
}
