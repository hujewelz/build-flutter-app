import 'dart:ui';

import 'package:flutter/material.dart';

class GaussianBlurWidget extends StatelessWidget {
  const GaussianBlurWidget({
    super.key,
    this.sigmaX = 0.0,
    this.sigmaY = 0.0,
    this.tileMode = TileMode.clamp,
    this.opacity = 1,
    required this.child,
  });

  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final double opacity;
  final TileMode tileMode;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Opacity(
          opacity: 0.8,
          child: child,
        ),
      ),
    );
  }
}
