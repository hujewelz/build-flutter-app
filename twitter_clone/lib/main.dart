import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // textTheme: TextTheme(
        //   titleMedium: const TextStyle(fontSize: 16),
        //   bodyText1: const TextStyle(fontSize: 15),
        //   bodyMedium: const TextStyle(fontSize: 14),
        //   bodySmall: const TextStyle(fontSize: 12)
        // ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
