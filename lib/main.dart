import 'package:flutter/material.dart';
import 'package:whassappclone/whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: Color(0xff075E54),
            secondary: Color(0xff25D366),
        ),
      ),
      home: new WhatsAppHome(),
    );
    throw UnimplementedError();
  }


}