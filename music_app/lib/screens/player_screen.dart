import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/models/playback_bar.dart';
import 'package:music_app/models/song.dart';
import 'package:music_app/widgets/lyrics.dart';
import 'package:music_app/widgets/playback_progress.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key key, @required this.song, this.initialOffsetY = 100})
      : super(key: key);

  final Song song;
  final double initialOffsetY;

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen>
    with SingleTickerProviderStateMixin {
  double _transformY = 10;
  Animation<double> _animation;
  AnimationController _controller;
  bool _shouldAnimated = false;

  @override
  void initState() {
    super.initState();

    _transformY = widget.initialOffsetY;

    _controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    _animation = Tween<double>(
      begin: _transformY,
      end: _transformY,
    ).animate(_animation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.song.name),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20.0,
          color: Theme.of(context).accentColor,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildThumbnal(),
                  PlaybackProgress(progress: 8.2),
                  PlaybackBar(isLike: true),
                ],
              ),
            ),
            _shouldAnimated
                ? AnimatedBuilder(
                    animation: _animation,
                    builder: (BuildContext context, Widget child) {
                      return _buildAnimatedLyrics();
                    },
                  )
                : _buildAnimatedLyrics(),
            Positioned(
              bottom: 0.0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 0.0,
                    sigmaY: .0,
                  ),
                  child: Container(
                    height: 100.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.6),
                        ],
                        stops: [0, 0.9],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildAnimatedLyrics() {
    return Positioned.fill(
      top: _shouldAnimated ? _animation.value : _transformY,
      child: GestureDetector(
        child: Lyrics(song: widget.song),
        onVerticalDragStart: (_) {
          _shouldAnimated = false;
        },
        onVerticalDragUpdate: (DragUpdateDetails details) {
          double y = _transformY;
          y += details.delta.dy;
          y = min(max(y, 0), widget.initialOffsetY);
          setState(() {
            _transformY = y;
          });
        },
        onVerticalDragEnd: (DragEndDetails details) {
          // print('onVerticalDragEnd: ${details.velocity}');
          double end = widget.initialOffsetY;
          if (_transformY <= end * 0.5) {
            end = 0;
          }

          setState(() {
            // _shouldAnimated = true;
            // _animation = CurvedAnimation(
            //   parent: _controller,
            //   curve: Curves.bounceOut,
            // );
            // _animation = Tween<double>(
            //   begin: _transformY,
            //   end: end,
            // ).animate(_animation);
            // print('animated value: $_animation.value');
            _transformY = end;
            // _controller.forward();
          });
        },
      ),
    );
  }

  Widget _buildThumbnal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Image.asset(
            widget.song.thumbnal,
            width: 250.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          widget.song.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6.0),
        Text(
          widget.song.artist.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}
