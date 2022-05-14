import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/sidebar_item.dart';
import 'package:twitter_clone/config/palette.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  var _index = 0;

  void tapSidebarItem(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: double.infinity,
      padding: const EdgeInsets.only(left: 24.0, top: 12.0, bottom: 16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(
            color: Palette.separator,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Icon(
            EvaIcons.twitter,
            color: Palette.primary,
            size: 38,
          ),
          const SizedBox(height: 10.0),
          SidebarItem(
            title: 'Home',
            icon: _index == 0 ? EvaIcons.home : EvaIcons.homeOutline,
            isSelected: _index == 0,
            onPressed: () => tapSidebarItem(0),
          ),
          SidebarItem(
            title: 'Explore',
            icon: _index == 1 ? EvaIcons.hash : EvaIcons.hashOutline,
            isSelected: _index == 1,
            onPressed: () => tapSidebarItem(1),
          ),
          SidebarItem(
            title: 'Notifications',
            icon: _index == 2 ? EvaIcons.bell : EvaIcons.bellOutline,
            isSelected: _index == 2,
            onPressed: () => tapSidebarItem(2),
          ),
          SidebarItem(
            title: 'Messages',
            icon: _index == 3 ? EvaIcons.email : EvaIcons.emailOutline,
            isSelected: _index == 3,
            onPressed: () => tapSidebarItem(3),
          ),
          SidebarItem(
            title: 'Bookmarks',
            icon: _index == 4 ? EvaIcons.bookmark : EvaIcons.bookmarkOutline,
            isSelected: _index == 4,
            onPressed: () => tapSidebarItem(4),
          ),
          SidebarItem(
            title: 'Profile',
            icon: _index == 5 ? EvaIcons.person : EvaIcons.personOutline,
            isSelected: _index == 5,
            onPressed: () => tapSidebarItem(5),
          ),
          const Expanded(child: SizedBox.shrink()),
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/cat.jpeg'),
              ),
              const SizedBox(width: 12),
              Column(
                children: const [
                  Text(
                    'huluoboboo',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '@huluoboboo',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
