import 'package:carrot_clone_app/main.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(13),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile1.jpg'),
                  ),
                  SizedBox(width: 15),
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
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "성수동1가",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ),
                          Text(
                            "#7716595",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
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
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).accentColor,
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
                        color: Theme.of(context).accentColor,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.2),
                        child: IconButton(
                          icon: Icon(Icons.receipt_sharp),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('판매내역'),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.2),
                        child: IconButton(
                          icon: Icon(Icons.shopping_bag),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('구매내역'),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.2),
                        child: IconButton(
                          icon: Icon(Icons.favorite),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('관심목록'),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _MenuRow(null, '나의활동'),
              _MenuRow(Icons.location_on_outlined, "내 동네 설정"),
              _MenuRow(Icons.location_searching_outlined, "동네 인증하기"),
              _MenuRow(Icons.bookmark_outline_sharp, "키워드 알림"),
              _MenuRow(Icons.apps_rounded, "모아보기"),
              _MenuRow(Icons.menu_book, "당근가계부"),
              _MenuRow(Icons.display_settings_rounded, "관심 카테고리 설정"),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _MenuRow(null, '우리 동네'),
              _MenuRow(Icons.location_on_outlined, "동네생활 글/댓글"),
              _MenuRow(Icons.location_on_outlined, "동네홍보 글"),
              _MenuRow(Icons.location_on_outlined, "동네 가게 후기"),
              _MenuRow(Icons.location_on_outlined, "내 단골 가게"),
              _MenuRow(Icons.location_on_outlined, "받은 쿠폰함"),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _MenuRow(null, '사장님 메뉴'),
              _MenuRow(Icons.location_on_outlined, "비즈프로필 만들기"),
              _MenuRow(Icons.location_on_outlined, "지역광고"),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _MenuRow(null, '기타'),
              _MenuRow(Icons.location_on_outlined, "친구초대"),
              _MenuRow(Icons.location_on_outlined, "공지사항"),
              _MenuRow(Icons.location_on_outlined, "자주 묻는 질문"),
              _MenuRow(Icons.location_on_outlined, "앱 설정"),
            ],
          ),
        ),
      ],
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
      height: 45,
      padding: EdgeInsets.all(10),
      child: Row(children: [
        if (icon != null) Icon(icon),
        SizedBox(width: 10),
        icon != null
            ? Text(text)
            : Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
      ]),
    );
  }
}
