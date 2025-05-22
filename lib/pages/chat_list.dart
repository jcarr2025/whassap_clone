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
              backgroundImage: new NetworkImage(
                messageData[i].imageUrl.toString(),
              ),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].name.toString(),
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  messageData[i].time.toString(),
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                messageData[i].message.toString(),
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
