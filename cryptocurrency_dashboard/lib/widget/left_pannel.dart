import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/widget/left_tabbar.dart';

class LeftPannel extends StatelessWidget {
  const LeftPannel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 110.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
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
              LeftTabBar(),
              SizedBox(height: 100.0),
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
      ),
    );
  }
}
