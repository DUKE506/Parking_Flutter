import 'package:flutter/material.dart';
import 'package:parking_flutter/screens/home/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int _currentBottomNavIndex;

  @override
  void initState() {
    super.initState();
    _currentBottomNavIndex = 0;
  }

  BottomNavigationBarItem _bottonNavigationBarItem(String icon, String label) {
    Map<String, IconData> icons = {
      'home': Icons.home,
      'history': Icons.pageview,
      'user': Icons.person
    };

    return BottomNavigationBarItem(
      icon: Icon(icons[icon]),
      activeIcon: Icon(
        icons[icon],
        color: Color(0xff218fd3),
      ),
      label: label,
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 20,
      onTap: (int index) => {
        setState(() {
          _currentBottomNavIndex = index;
        })
      },
      currentIndex: _currentBottomNavIndex,
      selectedItemColor: Color(0xff218fd3),
      selectedLabelStyle: TextStyle(fontSize: 14),
      unselectedLabelStyle: TextStyle(fontSize: 14),
      items: [
        _bottonNavigationBarItem('home', '홈'),
        _bottonNavigationBarItem('history', '주차현황'),
        _bottonNavigationBarItem('user', '마이'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
