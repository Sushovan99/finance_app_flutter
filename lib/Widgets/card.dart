import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String currency;
  final String amount;
  final String currencyShort;
  final Color backgroundColor;
  final Color textColor;
  final IconData currencyIcon;
  final double offsetY;

  const CustomCard.dark({
    super.key,
    required this.currency,
    required this.amount,
    required this.currencyShort,
    required this.currencyIcon,
    required this.offsetY,
  })  : backgroundColor = const Color(0xFF1F2123),
        textColor = Colors.white;

  const CustomCard.light({
    super.key,
    required this.currency,
    required this.amount,
    required this.currencyShort,
    required this.currencyIcon,
    required this.offsetY,
  })  : backgroundColor = const Color(0xFFFAFAFA),
        textColor = const Color(0xFF282C33);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        padding: const EdgeInsets.all(20),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      currencyShort,
                      style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-8, 10),
                child: Icon(
                  currencyIcon,
                  color: textColor,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
