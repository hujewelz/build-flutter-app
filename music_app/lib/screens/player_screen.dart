import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';
import 'package:music_app/widgets/lyrics.dart';
import 'package:music_app/widgets/playback_progress.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key key, @required this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(song.name),
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
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildThumbnal(),
                PlaybackProgress(progress: 0.2),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 300.0,
            child: Lyrics(),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 150.0,
              width: 500.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.red,
                  ],
                  stops: [0, 1],
                ),
              ),
            ),
          )
        ],
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
            song.thumbnal,
            width: 250.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          song.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6.0),
        Text(
          song.artist.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}
