import "package:flutter/material.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/helpers/variables/sizes.dart";
import 'package:wallet_plan/helpers/enums/router_enums.dart';

class SegmentButtonWidget extends StatefulWidget {
  const SegmentButtonWidget({required this.onPressed, super.key});

  final void Function(ChartSelected type) onPressed;

  @override
  State<SegmentButtonWidget> createState() => _SegmentButtonWidgetState();
}

class _SegmentButtonWidgetState extends State<SegmentButtonWidget> {
  ChartSelected type = ChartSelected.liner;

  bool get hasSelectedLiner => type == ChartSelected.liner;

  bool get hasSelectedBar => type == ChartSelected.bar;

  bool get hasSelectedPie => type == ChartSelected.pie;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            widget.onPressed(ChartSelected.liner);
            setState(() => type = ChartSelected.liner);
          },
          constraints: const BoxConstraints(minHeight: 32),
          icon: const Icon(Icons.timeline_rounded),
          style: IconButton.styleFrom(
            foregroundColor: hasSelectedLiner
                ? PrimaryColors.primary95
                : PrimaryColors.primary40,
            backgroundColor:
                hasSelectedLiner ? PrimaryColors.primary40 : Colors.transparent,
            iconSize: IconSizes.small,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              side: BorderSide(width: 1, color: PrimaryColors.primary40),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            widget.onPressed(ChartSelected.bar);
            setState(() => type = ChartSelected.bar);
          },
          constraints: const BoxConstraints(minHeight: 32),
          icon: const Icon(
            Icons.bar_chart,
          ),
          style: IconButton.styleFrom(
            foregroundColor: hasSelectedBar
                ? PrimaryColors.primary95
                : PrimaryColors.primary40,
            backgroundColor:
                hasSelectedBar ? PrimaryColors.primary40 : Colors.transparent,
            iconSize: IconSizes.small,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: const RoundedRectangleBorder(
              side: BorderSide(width: 1, color: PrimaryColors.primary40),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            widget.onPressed(ChartSelected.pie);
            setState(() => type = ChartSelected.pie);
          },
          constraints: const BoxConstraints(minHeight: 32),
          icon: const Icon(
            Icons.donut_large,
          ),
          style: IconButton.styleFrom(
            foregroundColor: hasSelectedPie
                ? PrimaryColors.primary95
                : PrimaryColors.primary40,
            backgroundColor:
                hasSelectedPie ? PrimaryColors.primary40 : Colors.transparent,
            iconSize: IconSizes.small,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              side: BorderSide(width: 1, color: PrimaryColors.primary40),
            ),
          ),
        ),
      ],
    );
  }
}
