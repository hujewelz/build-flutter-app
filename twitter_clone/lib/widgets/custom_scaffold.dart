import 'package:flutter/material.dart';
import 'nav_bar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.navBar,
    this.body,
  });

  final NavBar? navBar;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          body ?? const SizedBox.shrink(),
          navBar ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
