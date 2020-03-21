import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/colors.dart';
import 'package:cryptocurrency_dashboard/model/coin.dart';
import 'package:flutter_svg/svg.dart';

class CoinCell extends StatelessWidget {
  const CoinCell({Key key, @required this.coin}) : super(key: key);

  final Coin coin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyText.withOpacity(0.1),
              offset: Offset(0, 30),
              blurRadius: 20.0,
              // spreadRadius: 10.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(width: 20.0),
              ClipOval(
                child: SvgPicture.asset(
                  coin.icon,
                  color: coin.color,
                  width: 26.0,
                  height: 26.0,
                ),
              ),
              SizedBox(width: 8.0),
              Text(
                coin.name,
                style: TextStyle(
                  color: AppColors.blackText,
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            Text(
              coin.date,
              style: TextStyle(
                color: AppColors.greyText.withOpacity(0.6),
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  coin.availabel,
                  style: TextStyle(
                    color: coin.color,
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(
                  Icons.more_vert,
                  size: 18,
                ),
                SizedBox(width: 14.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
