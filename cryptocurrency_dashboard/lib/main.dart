import 'package:cryptocurrency_dashboard/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pryptocurrency Dashboard',
      debugShowCheckedModeBanner: false,
      color: Color(0xFFF9F8FA),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        platform: TargetPlatform.macOS,
        primaryColor: Colors.white,
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
