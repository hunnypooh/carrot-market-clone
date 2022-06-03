import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/chat_list_screen.dart';
import '../screens/my_page_screen.dart';
import '../screens/near_screen.dart';
import '../screens/town_life_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': '성수동1가',
      'actions': <Widget>[
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
      'isFloating': true,
    },
    {
      'page': TownLifeScreen(),
      'title': '성수동1가',
      'actions': <Widget>[
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
      'isFloating': true,
    },
    {
      'page': NearScreen(),
      'title': '내 근처',
      'actions': <Widget>[
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.create_outlined,
            color: Colors.black,
          ),
        ),
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.crop_free_sharp,
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
      'isFloating': false,
    },
    {
      'page': ChatListScreen(),
      'title': '채팅',
      'actions': <Widget>[
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.crop_free_sharp,
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
      'isFloating': false,
    },
    {
      'page': MyPageScreen(),
      'title': '나의 당근',
      'actions': <Widget>[
        IconButton(
          visualDensity: VisualDensity(horizontal: -3),
          onPressed: null,
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
      ],
      'isFloating': false,
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
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
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        actions: _pages[_selectedPageIndex]['actions'],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
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
      floatingActionButton: _getFAB(_pages[_selectedPageIndex]['isFloating']),
    );
  }
}

Widget _getFAB(bool isFloating) {
  if (isFloating) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      foregroundColor: Colors.white,
      onPressed: () {},
    );
  }
}
