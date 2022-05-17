import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/user.dart';

import '../config/palette.dart';

class TwitterAccountWidget extends StatelessWidget {
  const TwitterAccountWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 24.0,
          backgroundColor: Colors.white,
          backgroundImage: CachedNetworkImageProvider(user.imageUrl),
        ),
        const SizedBox(width: 8.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              user.account,
              style: const TextStyle(
                fontSize: 14.0,
                color: Palette.primaryText,
              ),
            ),
          ],
        )
      ],
    );
  }
}
