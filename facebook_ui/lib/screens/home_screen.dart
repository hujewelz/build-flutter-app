import 'package:facebook_ui/config/palette.dart';
import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 28,
                onPressed: null,
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 28,
                onPressed: null,
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Storeies(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostContanier(post: posts[index]);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
