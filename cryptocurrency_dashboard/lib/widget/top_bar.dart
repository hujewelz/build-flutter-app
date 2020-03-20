import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  TopBar({Key key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      padding: EdgeInsets.only(right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Theme.of(context).textTheme.headline1.color,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Theme.of(context).textTheme.headline1.color,
            onPressed: () {},
          ),
          Stack(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/images/avatar.jpeg',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF42CC7A),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  height: 10.0,
                  width: 10.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
