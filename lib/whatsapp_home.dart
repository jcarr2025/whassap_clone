import 'package:flutter/material.dart';
import 'package:whassappclone/pages/camera_alt.dart';
import 'package:whassappclone/pages/chat_screen.dart';

class WhatsAppHome extends StatefulWidget {

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FlutterChat'),

        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS'),
            new Tab(text: 'STATUS'),
            new Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new  Camera(),
          new ChatList(),
          new Center(child: new Text('Status')),
          new Center(child: new Text('Calls')),
        ],
      ),
    );
  }
}
