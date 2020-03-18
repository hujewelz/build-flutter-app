import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaybackProgress extends StatefulWidget {
  PlaybackProgress({Key key, this.progress}) : super(key: key);

  final double progress;

  @override
  _PlaybackProgressState createState() => _PlaybackProgressState(progress);
}

class _PlaybackProgressState extends State<PlaybackProgress> {
  _PlaybackProgressState(this._progress);

  double _progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CupertinoSlider(
            thumbColor: Colors.white,
            activeColor: Theme.of(context).accentColor,
            value: _progress,
            min: 0,
            max: 10,
            onChanged: (value) {
              setState(() {
                _progress = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: Row(
              children: <Widget>[
                Text(
                  '2:25',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  '-0:52',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
