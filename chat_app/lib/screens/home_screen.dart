import 'package:chat_app/models/message.dart';
import 'package:chat_app/widgets/chat_cell.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/category_selector.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            onPressed: () {},
          ),
          title: Text(
            'Chat',
            style: TextStyle(fontSize: 28.0),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        // padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: ListView.builder(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            itemCount: messages.length,
                            itemBuilder: (BuildContext context, int index) {
                              final chat = messages[index];
                              return ChatCell(chat: chat);
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
