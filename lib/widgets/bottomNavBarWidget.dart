import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late int _currentBottomNavIndex = 0;

  void onTapPageSelected(int index) {
    setState(() {
      _currentBottomNavIndex = index;
    });

    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/home');
        break;
    }
  }

  BottomNavigationBarItem _bottonNavigationBarItem(String icon, String label) {
    Map<String, IconData> icons = {
      'home': Icons.home,
      'search': Icons.search,
      'user': Icons.person
    };

    return BottomNavigationBarItem(
      icon: Icon(icons[icon]),
      activeIcon: Icon(
        icons[icon],
        color: const Color(0xFF272727),
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 20,
      onTap: onTapPageSelected, // 간단히 함수 참조로 변경
      currentIndex: _currentBottomNavIndex,
      selectedItemColor: const Color(0xFF272727),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
      items: [
        _bottonNavigationBarItem('home', '홈'),
        _bottonNavigationBarItem('search', '차량조회'),
        _bottonNavigationBarItem('user', '마이'),
      ],
    );
  }
}
