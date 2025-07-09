import 'package:flutter/material.dart';
import 'package:whassappclone/models/chat_model.dart';
class StatusModel {
  final String imageUrl;
  final String name;
  final String time;

  StatusModel({
    required this.name,
    required this.time,
    required this.imageUrl,
  });
  List<StatusModel> status= [
    new StatusModel(
      name: messageData[0].name.toString(),
      time: 'Hoy, 3:00 am',
      imageUrl: messageData[0].imageUrl.toString(),
    ),
    new StatusModel(
      name: messageData[1].name.toString(),
      time: 'Hoy, 5:23 pm',
      imageUrl: messageData[1].imageUrl.toString(),
    ),
    new StatusModel(
      name: messageData[2].name.toString(),
      time: 'Hoy, 4:43 pm',
      imageUrl: messageData[2].imageUrl.toString(),
    ),
  ];
}