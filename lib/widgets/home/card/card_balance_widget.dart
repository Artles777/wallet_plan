import "package:dotted_border/dotted_border.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:wallet_plan/helpers/variables/colors.dart";
import "package:wallet_plan/store/home/home_cards.dart";

class CardBalanceWidget extends StatelessWidget {
  const CardBalanceWidget({
    required this.card,
    this.onPressed,
    super.key,
  });

  final void Function()? onPressed;

  final CardDTO card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        top: 16,
        bottom: 16,
      ),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: const Radius.circular(12.0),
          borderPadding: const EdgeInsets.all(1),
          color: PrimaryColors.primary30,
          strokeWidth: 1,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: card.color,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: SecondaryColors.secondary70,
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 148,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: onPressed,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            card.title,
                            style: TextStyle(
                              color: card.textColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: PrimaryColors.primary90,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              card.number,
                              style: TextStyle(
                                color: card.textColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      //TODO: Добавить домамическую locale
                      NumberFormat.simpleCurrency(
                        name: card.currency,
                        locale: "RU-ru",
                      ).format(card.balance),
                      style: TextStyle(
                        color: card.currencyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
