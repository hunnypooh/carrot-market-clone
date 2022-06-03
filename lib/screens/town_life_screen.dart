import 'package:flutter/material.dart';

import '../models/town_life_post.dart';
import '../dummy_data.dart';

class TownLifeScreen extends StatelessWidget {
  final List<TownLifePost> posts = [];

  @override
  Widget build(BuildContext context) {
    final posts = DUMMY_TOWNLIFE_POSTS;

    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    primary: Color.fromRGBO(255, 255, 255, 0.1),
                  ),
                  child: Text(
                    posts[index].tag,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 5),
              Text(
                posts[index].content,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Text(
                    posts[index].user,
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Text(
                    '·',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Text(
                    posts[index].location,
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Spacer(),
                  Text(
                    posts[index].time,
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
              Divider(
                color: Colors.black38,
              ),
              Row(
                children: [
                  Icon(
                    Icons.tag_faces_sharp,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '공감하기',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  SizedBox(width: 5),
                  if (posts[index].likes > 0)
                    Text(
                      posts[index].likes.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '댓글',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  SizedBox(width: 5),
                  if (posts[index].comment > 0)
                    Text(
                      posts[index].comment.toString(),
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: posts.length,
    );
  }
}
