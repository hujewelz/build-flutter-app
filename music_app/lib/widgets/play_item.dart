import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';
import 'package:music_app/screens/player_screen.dart';

class PlayItem extends StatelessWidget {
  const PlayItem({Key key, this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => PlayerScreen(
          song: song,
          initialOffsetY: MediaQuery.of(context).size.height - 250,
        ),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 154.0,
            height: 154.0,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      song.thumbnal,
                      height: 154.0,
                      width: 154.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 38,
                    width: 38,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(19.0)),
                      child: Icon(
                        Icons.play_arrow,
                        size: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxWidth: 130),
                  child: Text(
                    song.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  song.artist.name,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 13.0,
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
