import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/config/palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Storeies extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Storeies({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.all(4.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _StoryCard(
              story: stories[index],
              currentUser: currentUser,
            );
          }
          return _StoryCard(story: stories[index - 1]);
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final Story story;
  final User? currentUser;

  const _StoryCard({
    Key? key,
    required this.story,
    this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl:
                  currentUser != null ? currentUser!.imageUrl : story.imageUrl,
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: 110.0,
            decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          currentUser != null
              ? Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: _buildAddButton(),
                )
              : Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: ProfileAvatar(
                    imageUrl: story.user.imageUrl,
                    hasBorder: !story.isViewed,
                  ),
                ),
          Positioned(
              left: 8.0,
              bottom: 8.0,
              right: 8.0,
              child: Text(
                currentUser == null ? story.user.name : 'Add to Story',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () => {},
        icon: const Icon(
          Icons.add,
          color: Palette.facebookBlue,
        ),
      ),
    );
  }
}
