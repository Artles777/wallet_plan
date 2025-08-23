import "package:flutter/material.dart";
import "package:wallet_plan/core/dto/charts/charts_categories_dto.dart";
import "package:wallet_plan/helpers/enums/chart_groups_enums.dart";
import "package:wallet_plan/widgets/commons/charts/donat_chart_widget.dart";
import "package:wallet_plan/widgets/commons/charts/line_chart_widget.dart";

class ChartWidget extends StatelessWidget {
  const ChartWidget({required this.categories, super.key});

  final List<ChartsCategoriesDTO> categories;

  @override
  Widget build(BuildContext context) {
    // return LineChartWidget(
    //   data: categories,
    //   group: ChartTimeGroup.month,
    //   title: "Расходы по категориям",
    // );
    return DonatChartWidget(
      data: categories,
      title: "Расходы по категориям",
    );
  }
}
