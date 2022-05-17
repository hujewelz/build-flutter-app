import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_screen.dart';
import 'package:twitter_clone/widgets/sidebar.dart';

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Sidebar(),
          Expanded(
            child: HomeScreen(),
          ),
        ],
      ),
    );
  }
}
