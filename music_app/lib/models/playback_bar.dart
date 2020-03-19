import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaybackBar extends StatefulWidget {
  PlaybackBar({Key key, this.isLike = false}) : super(key: key);

  final bool isLike;

  @override
  _PlaybackBarState createState() => _PlaybackBarState();
}

class _PlaybackBarState extends State<PlaybackBar> {
  bool _isLike;

  @override
  void initState() {
    super.initState();
    _isLike = widget.isLike;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.loop),
            iconSize: 40.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.fast_rewind),
            iconSize: 48.0,
            color: Colors.white,
            onPressed: () {},
          ),
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: SvgPicture.asset(
              'assets/icons/pause.svg',
              color: Colors.white,
              width: 30,
            ),
          ),
          IconButton(
            icon: Icon(Icons.fast_forward),
            iconSize: 48.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            iconSize: 36.0,
            color: _isLike ? Theme.of(context).accentColor : Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
