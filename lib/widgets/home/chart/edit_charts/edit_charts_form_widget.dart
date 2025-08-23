import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:wallet_plan/helpers/variables/colors.dart";

class EditChartsFormWidget extends StatelessWidget {
  const EditChartsFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: PrimaryColors.primary99),
                child: SafeArea(
                  minimum: const EdgeInsets.only(
                    top: 20.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Observer(builder: (_) => Column(children: [])),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
