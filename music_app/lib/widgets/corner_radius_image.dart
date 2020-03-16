import 'package:flutter/material.dart';

class CornerRadiusImage extends StatelessWidget {
  const CornerRadiusImage({Key key, this.image}) : super(key: key);

  final Image image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: image,
    );
  }
}
