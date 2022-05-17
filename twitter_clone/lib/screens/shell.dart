import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/bookmark_screen.dart';
import 'package:twitter_clone/screens/explore_screen.dart';
import 'package:twitter_clone/screens/home_screen.dart';
import 'package:twitter_clone/screens/lists_screen.dart';
import 'package:twitter_clone/screens/message_screen.dart';
import 'package:twitter_clone/screens/notification_screen.dart';
import 'package:twitter_clone/screens/profile_screen.dart';
import 'package:twitter_clone/widgets/sidebar.dart';

class Shell extends StatefulWidget {
  const Shell({super.key});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int _index = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ExploreScreen(),
    NotificationScreen(),
    MessageScreen(),
    BookmarkScreeen(),
    ListsScreeen(),
    ProfileScreeen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            onTap: (index) => setState(() {
              _index = index;
            }),
          ),
          Expanded(
            child: _screens[_index],
          ),
        ],
      ),
    );
  }
}
