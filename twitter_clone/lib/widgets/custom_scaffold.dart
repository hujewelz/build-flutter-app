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
        fit: StackFit.expand,
        children: [
          body ?? const SizedBox.shrink(),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: navBar ?? const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
