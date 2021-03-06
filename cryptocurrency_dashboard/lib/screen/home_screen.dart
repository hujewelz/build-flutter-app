import 'package:flutter/material.dart';
import 'package:cryptocurrency_dashboard/screen/dashboard_screen.dart';
import 'package:cryptocurrency_dashboard/widget/left_pannel.dart';
import 'package:cryptocurrency_dashboard/widget/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Row(
          children: <Widget>[
            LeftPannel(),
            Expanded(
              child: Container(
                height: double.infinity,
                child: Column(
                  children: <Widget>[
                    TopBar(),
                    Expanded(
                      child: Container(
                        child: Dashboard(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
