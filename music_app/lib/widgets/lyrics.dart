import 'package:flutter/material.dart';

class Lyrics extends StatefulWidget {
  Lyrics({Key key}) : super(key: key);

  @override
  _LyricsState createState() => _LyricsState();
}

class _LyricsState extends State<Lyrics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26.0),
            topRight: Radius.circular(26.0),
          ),
        ),
        child: Column(
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
                child: SingleChildScrollView(
                  child: Text.rich(
                    TextSpan(
                      text:
                          "Yeah, breakfast at Tiffany's and bottles of bubbles\n",
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text:
                              "Yeah, breakfast at Tiffany's and bottles of bubbles" *
                                  10,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
