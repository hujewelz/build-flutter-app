import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatCell extends StatelessWidget {
  const ChatCell({Key key, @required this.chat}) : super(key: key);

  final Message chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 16.0),
      decoration: BoxDecoration(
        color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(chat.sender.avatar),
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chat.sender.name,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        chat.text,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                chat.time,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6.0),
              chat.unread
                  ? Container(
                      alignment: Alignment.center,
                      height: 20.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Text('')
            ],
          ),
        ],
      ),
    );
  }
}
