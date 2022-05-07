import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.black12,
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(13),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile1.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "냠냠냠",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "성수동1가",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                            Text(
                              "#7716595",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      visualDensity: VisualDensity(horizontal: -3),
                      onPressed: null,
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(254, 126, 53, 1.0),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Row(
                    children: [
                      Image(
                        width: 15,
                        image: AssetImage('images/436px-DaangnMarket_logo.png'),
                      ),
                      Text(
                        "pay",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(254, 126, 53, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "0원",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "충전하기",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _MenuRow(Icons.location_on_outlined, "내 동네 설정"),
                _MenuRow(Icons.location_searching_outlined, "동네 인증하기"),
                _MenuRow(Icons.bookmark_outline_sharp, "키워드 알림"),
                _MenuRow(Icons.display_settings_rounded, "관심 카테고리 설정"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _MenuRow(Icons.location_on_outlined, "모아보기"),
                _MenuRow(Icons.location_on_outlined, "당근가계부"),
                _MenuRow(Icons.location_on_outlined, "받은 쿠폰함"),
                _MenuRow(Icons.location_on_outlined, "내 단골 가게"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _MenuRow(Icons.location_on_outlined, "동네생활 글/댓글"),
                _MenuRow(Icons.location_on_outlined, "동네 가게 후기"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _MenuRow(Icons.location_on_outlined, "비즈프로필 만들기"),
                _MenuRow(Icons.location_on_outlined, "동네홍보 글"),
                _MenuRow(Icons.location_on_outlined, "지역광고"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _MenuRow(Icons.location_on_outlined, "친구초대"),
                _MenuRow(Icons.location_on_outlined, "공지사항"),
                _MenuRow(Icons.location_on_outlined, "자주 묻는 질문"),
                _MenuRow(Icons.location_on_outlined, "앱 설정"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuRow extends StatelessWidget {
  final IconData icon;
  final String text;

  _MenuRow(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Icon(icon),
        SizedBox(width: 10),
        Text(text),
      ]),
    );
  }
}
