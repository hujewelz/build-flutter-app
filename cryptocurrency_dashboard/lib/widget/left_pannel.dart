import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/left_tabbar.dart';

class LeftPannel extends StatelessWidget {
  const LeftPannel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113.0,
      child: Stack(
        children: <Widget>[
          _buildMenus(context),
          Positioned(
            right: 3,
            child: Container(
              width: 1,
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).iconTheme.color.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildMenus(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/images/a.jpg',
                  width: 34.0,
                  height: 34.0,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).iconTheme.color.withOpacity(0.4),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 130.0,
          child: LeftTabBar(),
        ),
      ],
    );
  }
}
