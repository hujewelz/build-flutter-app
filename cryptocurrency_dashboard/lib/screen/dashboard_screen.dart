import 'package:cryptocurrency_dashboard/widget/right_panel.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/colors.dart';
import 'package:cryptocurrency_dashboard/widget/honeymining_diagram.dart';
import 'package:cryptocurrency_dashboard/model/coin.dart';
import 'package:cryptocurrency_dashboard/widget/coin_cell.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 46.0),
              child: Column(
                children: <Widget>[
                  _buildTopTitle(),
                  HoneyminingDiagram(),
                  _buildBottomTitle(),
                  _buildCryptoCoins(),
                ],
              ),
            ),
          ),
          RightPanel(),
        ],
      ),
    );
  }

  Widget _buildTopTitle() {
    return Row(
      children: <Widget>[
        
        Text(
          'Honeymining Statics',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          'HONEYMIER IS ON',
          style: TextStyle(
            fontSize: 13.0,
            color: AppColors.greyText,
            fontWeight: FontWeight.w600,
          ),
        ),
        Switch(
          activeColor: Colors.white,
          activeTrackColor: AppColors.green,
          value: true,
          onChanged: (value) {},
        ),
        SizedBox(width: 60.0),
      ],
    );
  }

  Widget _buildBottomTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Your crypto coins',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCryptoCoins() {
    return Column(
      children: coins.map((e) => CoinCell(coin: e)).toList(),
    );
  }
}

class AnimatedBox extends StatefulWidget {
  AnimatedBox({Key key}) : super(key: key);

  @override
  _AnimatedBoxState createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 300.0,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: _animation,
        child: Container(
          color: Colors.red,
          width: 60,
          height: 60,
        ),
        builder: (BuildContext context, Widget child) {
          return Container(
            width: _animation.value,
            height: _animation.value,
            color: Colors.orange,
            child: child,
          );
        },
      ),
    );
  }
}
