import 'package:flutter/material.dart';
import 'package:whassappclone/models/chat_model.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage:
                  new NetworkImage(messageData[i].imageUrl.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
