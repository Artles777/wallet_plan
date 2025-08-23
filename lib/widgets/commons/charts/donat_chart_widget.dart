import "package:flutter/material.dart";
import "package:syncfusion_flutter_charts/charts.dart";
import "package:wallet_plan/core/dto/charts/charts_categories_dto.dart";
import "package:wallet_plan/widgets/commons/charts/base_chart.dart";

class _ChartData {
  _ChartData(this.x, this.y, this.pointColor);

  final String x;
  final double y;
  final Color pointColor;
}

class DonatChartWidget extends StatelessWidget with BaseChart {
  const DonatChartWidget({
    required this.data,
    this.title = "",
    super.key,
  });

  final List<ChartsCategoriesDTO> data;

  List<_ChartData> replaceData(ChartsCategoriesDTO item) {
    return List.generate(
        data.length, (i) => _ChartData(item.name, item.data, data[i].color));
  }

  @override
  final String title;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: formatTitle,
      legend: formatLegend,
      tooltipBehavior: TooltipBehavior(enable: true),
      series: [
        DoughnutSeries<ChartsCategoriesDTO, String>(
          dataSource: data,
          xValueMapper: (ChartsCategoriesDTO data, _) => data.name,
          yValueMapper: (ChartsCategoriesDTO data, _) => data.data,
          pointColorMapper: (ChartsCategoriesDTO data, _) => data.color,
        )
      ]
      // series: data
      //     .map(
      //       (item) => DoughnutSeries(
      //         name: item.name,
      //         dataSource: replaceData(item),
      //         xValueMapper: (_ChartData sales, _) => sales.x,
      //         yValueMapper: (_ChartData sales, _) => sales.y,
      //       ),
      //     )
      //     .toList(),
    );
  }
}
