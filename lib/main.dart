import 'package:flutter/material.dart';

import './screens/start_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Carrot Market Clone',
      initialRoute: '/',
      routes: {
        // '/': (context) => StartScreen(),
        '/': (context) => TabsScreen(),
      },
      theme: ThemeData(
        accentColor: Color.fromRGBO(254, 126, 53, 1.0),
      ),
    ),
  );
}
