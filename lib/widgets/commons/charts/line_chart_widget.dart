import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:syncfusion_flutter_charts/charts.dart";
import "package:wallet_plan/core/dto/charts/charts_categories_dto.dart";
import "package:wallet_plan/core/dto/charts/charts_week_dto.dart";
import "package:wallet_plan/helpers/enums/chart_groups_enums.dart";
import "package:wallet_plan/helpers/intl/periods.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/widgets/commons/charts/base_chart.dart";

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final num y;
}

class LineChartWidget extends StatelessWidget with BaseChart {
  const LineChartWidget({
    required this.data,
    this.group = ChartTimeGroup.month,
    this.title = "",
    super.key,
  });

  final List<ChartsWeekDTO> data;
  final ChartTimeGroup group;

  @override
  final String title;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final currencyFormat =
        NumberFormat.simpleCurrency(locale: locale.toString());

    List<_ChartData> replaceData(ChartsWeekDTO item) {
      switch (group) {
        case ChartTimeGroup.week:
          return getWeek(week: item.data.length)
              .map((el) => _ChartData(el.period, item.data[el.index]))
              .toList();
        case ChartTimeGroup.year:
          return getYears(years: item.data.length)
              .map((el) => _ChartData(el.period, item.data[el.index]))
              .toList();
        default:
          return getMonths(months: item.data.length)
              .map((el) => _ChartData(el.period, item.data[el.index]))
              .toList();
      }
    }

    return SfCartesianChart(
      title: formatTitle,
      legend: formatLegend,
      plotAreaBorderWidth: 0,
      primaryXAxis: const CategoryAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: MajorGridLines(color: PrimaryColors.primary90),
      ),
      primaryYAxis: NumericAxis(
        labelFormat: "${currencyFormat.currencySymbol} {value}",
        majorGridLines: const MajorGridLines(color: PrimaryColors.primary90),
      ),
      series: data
          .map(
            (item) => LineSeries(
              name: item.name,
              color: item.color,
              dataSource: replaceData(item),
              xValueMapper: (_ChartData sales, _) => sales.x,
              yValueMapper: (_ChartData sales, _) => sales.y,
              markerSettings: const MarkerSettings(isVisible: true),
            ),
          )
          .toList(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}
