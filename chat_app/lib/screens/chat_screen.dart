import 'package:flutter/material.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/models/user.dart';

class ChateScreen extends StatefulWidget {
  final User user;
  ChateScreen({Key key, @required this.user}) : super(key: key);

  @override
  _ChateScreenState createState() => _ChateScreenState();
}

class _ChateScreenState extends State<ChateScreen> {
  Widget _buildMessage(BuildContext context, Message message) {
    final isMe = message.sender.id == 0;
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0)
              : EdgeInsets.only(top: 8.0, bottom: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                message.text,
              ),
            ],
          ),
        ),
        isMe
            ? Text('')
            : IconButton(
                icon: Icon(
                  message.isLiked ? Icons.favorite : Icons.favorite_border,
                ),
                // iconSize: 26.0,
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                onPressed: () {},
              ),
      ],
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      color: Colors.white,
      height: 58.0,
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: Theme.of(context).accentColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.face),
              color: Colors.grey[500],
              splashColor: Colors.white,
              highlightColor: Colors.white,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration:
                    InputDecoration.collapsed(hintText: 'Send Message...'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.attach_file),
              color: Colors.grey[500],
              splashColor: Colors.white,
              highlightColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.user.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        itemCount: messages.length,
                        reverse: true,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildMessage(context, messages[index]);
                        },
                      ),
                    ),
                  ),
                ),
                _buildMessageComposer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
