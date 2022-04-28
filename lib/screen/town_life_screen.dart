import 'package:flutter/material.dart';

import '../models/town_life_post.dart';
import '../widgets/main_navigation_bar.dart';

class TownLife extends StatelessWidget {
  final List<TownLifePost> posts = [
    TownLifePost(
      tag: '살림',
      content: '전등 불이 이렇게 들어와서 교체하려고 하는데 어떻게 해야 되나요??',
      user: '이곳저곳',
      location: '송정동',
      time: '16분 전',
      likes: 0,
      comment: 0,
    ),
    TownLifePost(
      tag: '취미생활',
      content: '오전 9시에 같이 런닝하실분?오전 9시에 같이 런닝하실분?오전 9시에 같이 런닝하실분?',
      user: '조던',
      location: '성수동3가',
      time: '1시간 전',
      likes: 2,
      comment: 1,
    ),
    TownLifePost(
      tag: '강아지',
      content: '서울숲에 강아지 산책하기 좋아요.서울숲에 강아지 산책하기 좋아요.서울숲에 강아지 산책하기 좋아요.',
      user: '꼬미네',
      location: '성수동1가',
      time: '4시간 전',
      likes: 0,
      comment: 0,
    ),
    TownLifePost(
      tag: '일상',
      content: '저 드로잉 동아리 하는데 힐링이 되서 \n추천할테니까 같이 하실 분~',
      user: '코리안조커',
      location: '용답동',
      time: '5시간 전',
      likes: 0,
      comment: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: MainNavigationBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          shape: Border(
            bottom: BorderSide(
              color: Colors.black26,
            ),
          ),
          //TODO 커스텀으로 하기
          title: Text(
            "성수동1가",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: <Widget>[
            IconButton(
              visualDensity: VisualDensity(horizontal: -3),
              onPressed: null,
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              visualDensity: VisualDensity(horizontal: -3),
              onPressed: null,
              icon: const Icon(
                Icons.menu_open_rounded,
                color: Colors.black,
              ),
            ),
            IconButton(
              visualDensity: VisualDensity(horizontal: -3),
              onPressed: null,
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.black12,
          height: 600,
          child: ListView.builder(
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
                      color: Colors.red,
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
          ),
        ),
      ),
    );
  }
}
