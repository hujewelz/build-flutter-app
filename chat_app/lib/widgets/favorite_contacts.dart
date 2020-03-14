import 'package:flutter/material.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Favorite Contacts',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.blueGrey,
              onPressed: () {},
            )
          ],
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildUser(index, context);
            },
          ),
        )
      ]),
    );
  }

  Widget _buildUser(int index, BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChateScreen(
            user: favorites[index],
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(favorites[index].avatar),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              favorites[index].name,
              style: TextStyle(color: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
