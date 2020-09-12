import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport_app/component/appbar.dart';
import 'package:sport_app/screens/home_page.dart';
import 'package:sport_app/screens/stats_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(),
      body: PageStorage(
        child: _pages[currentPage],
        bucket: bucket,
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlueAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        items: _tabs,
      );

  final List<Widget> _pages = [
    HomePage(
      key: PageStorageKey('Home Page'),
    ),
    StatsPage(
      key: PageStorageKey('Stats Page'),
    ),
    Container(color: Colors.white),
    Container(color: Colors.white),
    Container(color: Colors.white),
  ];

  final List<BottomNavigationBarItem> _tabs = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        size: 26,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FontAwesomeIcons.chartBar,
        size: 26,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage("images/logo.png"),
        color: Colors.black.withOpacity(0.8),
        size: 36,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.live_tv,
        size: 26,
      ),
      title: Text(''),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.language,
        size: 26,
      ),
      title: Text(''),
    ),
  ];
}
