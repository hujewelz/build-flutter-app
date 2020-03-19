import 'package:cryptocurrency_dashboard/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pryptocurrency Dashboard',
      color: Color(0xFFF9F8FA),
      theme: ThemeData(
        primaryColor: Color(0xFFF9F8FA),
        accentColor: Color(0xFF8B69D1),
        iconTheme: IconThemeData(
          color: Color(0xFFC4C4C4),
          size: 30.0,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xFF252528),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
