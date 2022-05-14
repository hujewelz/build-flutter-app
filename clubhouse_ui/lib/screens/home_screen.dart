import 'package:clubhouse_ui/config/palette.dart';
import 'package:clubhouse_ui/widgets/widgets.dart';
import 'package:clubhouse_ui/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          color: Theme.of(context).iconTheme.color,
          icon: const Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            color: Theme.of(context).iconTheme.color,
            icon: const Icon(
              CupertinoIcons.envelope_open,
              size: 22.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            color: Theme.of(context).iconTheme.color,
            icon: const Icon(
              CupertinoIcons.calendar,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            color: Theme.of(context).iconTheme.color,
            icon: const Icon(
              CupertinoIcons.bell,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: UserProfileImage(
              imageUrl: currentUser.imageUrl,
              size: 36,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100.0),
            children: [
              const UpcomingRooms(rooms: upcomingRoomsList),
              const SizedBox(
                height: 12.0,
              ),
              ...roomsList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Palette.green,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        CupertinoIcons.add,
                        size: 21.0,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' Start a room',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60.0,
            right: 40.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.circle_grid_3x3_fill,
                    size: 28.0,
                  ),
                ),
                Positioned(
                  right: 4.6,
                  bottom: 11.8,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.green,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
