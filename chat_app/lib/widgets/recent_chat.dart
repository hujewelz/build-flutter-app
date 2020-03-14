import 'package:flutter/material.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/widgets/chat_cell.dart';
import 'package:chat_app/screens/chat_screen.dart';

class RecentChat extends StatelessWidget {
  const RecentChat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        // padding: EdgeInsets.symmetric(vertical: 20.0),
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final chat = chats[index];
              return ChatCell(
                chat: chat,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChateScreen(
                        user: chat.sender,
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
