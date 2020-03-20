import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/colors.dart';

class Coin {
  final String name;
  final String icon;
  final String date;
  final String availabel;
  final Color color;

  Coin({
    this.name,
    this.icon,
    this.date,
    this.availabel,
    this.color,
  });
}

final List<Coin> coins = [
  Coin(
    name: 'Bitcoin Cash (BCH)',
    icon: 'assets/images/bitcoin.png',
    date: '04.01.2020 - 30.01.2020',
    availabel: '350.501 BCH',
    color: AppColors.purple,
  ),
  Coin(
    name: 'Monero (XMR)',
    icon: 'assets/images/bitcoin.png',
    date: '04.01.2020 - 30.01.2020',
    availabel: '78.501 XMR',
    color: AppColors.yellow,
  ),
];
