import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/main.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";

class ChartSettingsWidget extends StatelessWidget {
  const ChartSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    final HomeChartState chart = state.panel.chart;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // TODO: next release
        // SegmentButtonWidget(onPressed: (type) => chart.changeViewChart(type)),
        IconButton(
          icon: const Icon(Icons.settings_input_component_outlined),
          tooltip: context.l10n.settings_chart,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            foregroundColor: SecondaryColors.secondary10,
          ),
          onPressed: () => chart.openChartSettings(context),
        ),
      ],
    );
  }
}
