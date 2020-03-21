import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/colors.dart';

class CoinStatic {
  CoinStatic({this.name, this.color});
  final String name;
  final Color color;
}

final coinStatics = [
  CoinStatic(name: 'Ethereum(ETH)', color: AppColors.orange),
  CoinStatic(name: 'Bitcoin Cash(BCH)', color: AppColors.purple),
  CoinStatic(name: 'Monero(XMR)', color: AppColors.yellow),
  CoinStatic(name: 'Tether(USDT)', color: AppColors.green),
  CoinStatic(name: 'Libra(LIBRA)', color: Colors.pink),
  CoinStatic(name: 'Litecoin(LTC)', color: AppColors.blue),
  CoinStatic(name: 'Binance(BNB)', color: Colors.brown),
  CoinStatic(name: 'Bitcoin SV(BSV)', color: Colors.redAccent),
];
