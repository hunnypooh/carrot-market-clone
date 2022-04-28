import 'package:flutter/material.dart';

import '../models/chat_item.dart';
import '../widgets/main_navigation_bar.dart';

class ChatListScreen extends StatelessWidget {
  final List<ChatItem> chatItems = [
    ChatItem('images/profile1.jpg', '바다', '성수동2가', '1일 전',
        'images/homeitem1.jpg', '네네'),
    ChatItem('images/profile2.JPG', '새우깡', '용답동', '3일 전',
        'images/homeitem2.jpg', '도착했습니다'),
    ChatItem('images/profile1.jpg', '꼬미네', '성수동3가', '5일 전',
        'images/homeitem2.jpg', '감사드려요~'),
    ChatItem('images/profile2.JPG', '코리안조커', '송정동', '1주 전',
        'images/homeitem1.jpg', '코리안조커님이 이모티콘을 보냈어요.'),
    ChatItem('images/profile1.jpg', '바다', '성수동2가', '1일 전',
        'images/homeitem1.jpg', '네네'),
    ChatItem('images/profile2.JPG', '새우깡', '용답동', '3일 전',
        'images/homeitem2.jpg', '도착했습니다'),
    ChatItem('images/profile1.jpg', '꼬미네', '성수동3가', '5일 전',
        'images/homeitem2.jpg', '감사드려요~'),
    ChatItem('images/profile2.JPG', '코리안조커', '송정동', '1주 전',
        'images/homeitem1.jpg', '코리안조커님이 이모티콘을 보냈어요.'),
    ChatItem('images/profile1.jpg', '바다', '성수동2가', '1일 전',
        'images/homeitem1.jpg', '네네'),
    ChatItem('images/profile2.JPG', '새우깡', '용답동', '3일 전',
        'images/homeitem2.jpg', '도착했습니다'),
    ChatItem('images/profile1.jpg', '꼬미네', '성수동3가', '5일 전',
        'images/homeitem2.jpg', '감사드려요~'),
    ChatItem('images/profile2.JPG', '코리안조커', '송정동', '1주 전',
        'images/homeitem1.jpg', '코리안조커님이 이모티콘을 보냈어요.'),
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
          title: Text(
            "채팅",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: <Widget>[
            IconButton(
              visualDensity: VisualDensity(horizontal: -3),
              onPressed: null,
              icon: const Icon(
                Icons.scanner,
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
            ),
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(chatItems[index].profileImagePath),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              chatItems[index].name,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              chatItems[index].location,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                            Text(
                              ' · ',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                            Text(
                              chatItems[index].time,
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                          ],
                        ),
                        // SizedBox(height: 5),
                        Text(chatItems[index].messageLatest),
                      ],
                    ),
                    Spacer(),
                    ClipRRect(
                      child: Image.asset(
                        chatItems[index].itemImagePath,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ],
                ),
              );
            },
            itemCount: chatItems.length,
          ),
        ),
      ),
    );
  }
}
