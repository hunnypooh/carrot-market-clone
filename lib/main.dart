import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'structures.dart';
import 'homeItemContainer.dart';

void main() {
  runApp(MaterialApp(
      title: 'Carrot Market Clone',
      initialRoute: '/',
      routes: {
        // '/': (context) => StartScreen(),
        '/': (context) => HomeScreen(),
        '/singIn': (context) => SignInScreen(),
        '/logIn': (context) => LoginScreen(),
      },
      theme: ThemeData(
        // primaryColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(),
        accentColor: Color.fromRGBO(254, 126, 53, 1.0),
      )));
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    width: 100,
                    image: AssetImage('images/436px-DaangnMarket_logo.png'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '당신 근처의 당근마켓',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('중고 거래부터 동네 정보까지,'),
                  Text('지금 내 동네를 선택하고 시작해보세요!'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, right: 15),
              margin: EdgeInsets.only(bottom: 25),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: RaisedButton(
                color: Color.fromRGBO(254, 126, 53, 1.0),
                textColor: Colors.white,
                child: Text(
                  '시작하기',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/singIn');
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '이미 계정이 있나요? ',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '로그인',
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamed(context, '/logIn'),
                    style: TextStyle(
                      color: Color.fromRGBO(254, 126, 53, 1.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeItems = [
    HomeItem(
        'images/homeitem1.jpg', '맥북에어 스그 기본형', '성수2동', '1분 전', '1,060,000원'),
    HomeItem('images/homeitem2.jpg', '맥북에어 m1 스페이스 그레이', '성수3동', '끌올 1분 전',
        '1,000,000원'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
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
                Icons.menu,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
              HomeItemContainer(_homeItems[1]),
              HomeItemContainer(_homeItems[0]),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Colors.black26,
              ),
            ),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_work_outlined),
                label: '동네생활',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: '내 근처',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline_rounded),
                label: '채팅',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp),
                label: '나의 당근',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
