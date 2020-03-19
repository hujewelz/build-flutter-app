import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';

class Lyrics extends StatefulWidget {
  Lyrics({Key key, this.song}) : super(key: key);

  final Song song;

  @override
  _LyricsState createState() => _LyricsState();
}

class _LyricsState extends State<Lyrics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Container(
          color: Colors.red.withOpacity(0.6),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                widget.song.thumbnal,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Container(
                    child: _buildContent(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 4.0,
          width: 44.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: _buildLyric(),
            // SingleChildScrollView(
            //   child: _buildLyric(),
            // ),
          ),
        )
      ],
    );
  }

  Text _buildLyric() {
    return Text.rich(
      TextSpan(
        text: widget.song.lyrics.substring(0, 40),
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: widget.song.lyrics,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
