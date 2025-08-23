import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:provider/provider.dart";

import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/main.dart";
import "package:wallet_plan/store/home.dart";
import "package:wallet_plan/store/home/home_cards.dart";
import "package:wallet_plan/store/home/home_chart_state.dart";
import "package:wallet_plan/widgets/commons/custom_divider.dart";
import "package:wallet_plan/widgets/home/card/card_add_balance_widget.dart";
import "package:wallet_plan/widgets/home/card/card_balance_widget.dart";

class CardListWidget extends StatelessWidget {
  const CardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<HomeState>(context);
    final HomeCardsState cardsState = state.cards;
    final HomeChartState chartState = state.panel.chart;
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    return Column(
      children: [
        Theme(
          data: theme,
          child: ExpansionTile(
            title: Text(context.l10n.accounts),
            initiallyExpanded: cardsState.isShowCards,
            iconColor: SecondaryColors.secondary10,
            textColor: SecondaryColors.secondary10,
            onExpansionChanged: (showCards) =>
                cardsState.isShowCards = showCards,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 108,
                  width: double.infinity,
                  child: Observer(
                    builder: (_) => ListView.builder(
                      itemCount: cardsState.cardCount,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == cardsState.cardsList.length) {
                          return const CardAddBalanceWidget();
                        } else {
                          return CardBalanceWidget(
                            card: cardsState.cardsList[index],
                            onPressed: () =>
                                cardsState.navigateEditAccountScreen(context),
                          );
                        }
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
