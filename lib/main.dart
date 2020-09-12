import 'package:flutter/material.dart';

import 'component/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[200],
        primaryColorDark: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.lightBlueAccent,
      ),
      home: BottomNavigation(),
    );
  }
}
