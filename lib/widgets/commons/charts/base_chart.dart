import "package:flutter/material.dart";
import "package:syncfusion_flutter_charts/charts.dart";

mixin BaseChart {
  String get title => "";

  ChartTitle get formatTitle => ChartTitle(
        text: title,
        textStyle: const TextStyle(
          fontSize: 14,
        ),
        alignment: ChartAlignment.near,
      );

  Legend get formatLegend => const Legend(
        isVisible: true,
        overflowMode: LegendItemOverflowMode.scroll,
      );
}
