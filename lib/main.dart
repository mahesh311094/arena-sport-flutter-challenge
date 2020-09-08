import 'package:flutter/material.dart';
import 'package:sport_app/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arena',
      home: HomePage(),
    );
  }
}
