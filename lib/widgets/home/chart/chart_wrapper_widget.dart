import "package:flutter/material.dart";
import "package:wallet_plan/core/dto/charts/charts_categories_dto.dart";
import "package:wallet_plan/widgets/home/chart/chart_settings_widget.dart";
import "package:wallet_plan/widgets/home/chart/chart_widget.dart";

class ChartWrapperWidget extends StatelessWidget {
  const ChartWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ChartSettingsWidget(),
        // const ChartCategoriesWidget(),
        ChartWidget(
          categories: [
            ChartsCategoriesDTO(
                name: "Еда", color: Colors.green, data: 168.00),
            ChartsCategoriesDTO(
                name: "Рестораны и кафе",
                color: Colors.yellow,
                data: 350.30),
          ],
        ),
      ],
    );
  }
}
