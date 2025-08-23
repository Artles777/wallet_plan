import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";
import "package:wallet_plan/widgets/commons/custom_draggable_sheet_widget.dart";
import "package:wallet_plan/widgets/home/chart/chart_wrapper_widget.dart";

class HomePanelWidget extends StatelessWidget {
  const HomePanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    final HomeChartState chartState = homeState.panel.chart;

    return Observer(
      builder: (_) => CustomDraggableSheetWidget(
        minSize: homeState.sizeSheet,
        maxSize: homeState.layoutSize - 50,
        childWidget: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Divider(
                height: 1.0,
                color: PrimaryColors.primary80,
                indent: 0.3.sw,
                endIndent: 0.3.sw,
              ),
            ),
            // TODO: next realise
            /*Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ),*/
            const ChartWrapperWidget(),
          ],
        ),
        controller: chartState.panelController,
      ),
    );
  }
}
