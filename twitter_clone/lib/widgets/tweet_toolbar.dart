import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';

class TweetToolbar extends StatelessWidget {
  const TweetToolbar({
    super.key,
    required this.replay,
    required this.retweet,
    required this.likes,
  });

  final int replay;
  final int retweet;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ToolbarButton(iconData: EvaIcons.messageCircleOutline, value: replay),
          ToolbarButton(iconData: EvaIcons.flip2Outline, value: retweet),
          ToolbarButton(iconData: EvaIcons.heartOutline, value: likes),
          const ToolbarButton(iconData: EvaIcons.externalLinkOutline, value: 0),
        ],
      ),
    );
  }
}

class ToolbarButton extends StatelessWidget {
  const ToolbarButton({
    super.key,
    required this.iconData,
    required this.value,
    this.onPressed,
  });

  final IconData iconData;
  final int value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Palette.secondaryText,
            size: 18.0,
          ),
          const SizedBox(width: 8.0),
          value > 0
              ? Text(
                  '$value',
                  style: const TextStyle(
                      color: Palette.secondaryText, fontSize: 13.0),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
