import 'package:flutter/material.dart';

class TownLifePost {
  final String tag;
  final String content;
  final String user;
  final String location;
  final String time;
  final int likes;
  final int comment;

  const TownLifePost({
    @required this.tag,
    @required this.content,
    @required this.user,
    @required this.location,
    @required this.time,
    @required this.likes,
    @required this.comment,
  });
}
