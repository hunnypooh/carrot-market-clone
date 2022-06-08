import 'package:flutter/material.dart';

import '../models/town_life_post.dart';
import '../dummy_data.dart';

class TownLifeScreen extends StatelessWidget {
  final List<TownLifePost> posts = [];

  @override
  Widget build(BuildContext context) {
    final posts = DUMMY_TOWNLIFE_POSTS;

    return ListView.separated(
      itemBuilder: (context, index) {
        // if (index == 0) {
        //   return Center();
        // }
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
                    primary: Color(0xFFE3E3E3),
                    elevation: 0,
                  ),
                  child: Text(
                    posts[index].tag,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 5),
              Text(
                posts[index].content,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Text(
                    posts[index].user,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const Text(
                    '·',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Text(
                    posts[index].location,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const Spacer(),
                  Text(
                    posts[index].time,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black38,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.tag_faces_sharp,
                    color: Colors.black54,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '공감하기',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  const SizedBox(width: 5),
                  if (posts[index].likes > 0)
                    Text(
                      posts[index].likes.toString(),
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.black54,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '댓글',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  const SizedBox(width: 5),
                  if (posts[index].comment > 0)
                    Text(
                      posts[index].comment.toString(),
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 8,
          color: Color(0xFFE3E3E3),
        );
      },
      itemCount: posts.length,
    );
  }
}
