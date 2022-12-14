import 'package:flutter/material.dart';

import '../Widgets/card.dart';

var cardList = [
  const CustomCard.dark(
    currency: 'Euro',
    amount: '6 428',
    currencyShort: 'EUR',
    currencyIcon: Icons.euro_rounded,
    offsetY: 0,
  ),
  const CustomCard.light(
    currency: 'Dollar',
    amount: '55 622',
    currencyShort: 'USD',
    currencyIcon: Icons.attach_money,
    offsetY: -21,
  ),
  const CustomCard.dark(
    currency: 'Rupee',
    amount: '28 981',
    currencyShort: 'INR',
    currencyIcon: Icons.currency_rupee_rounded,
    offsetY: -41,
  )
];
