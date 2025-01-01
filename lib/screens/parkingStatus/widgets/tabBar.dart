import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 500),
    );
  }

  // tabController는 프레임당 콜백을 받는 클래스이기 때문에 dispose 해줘야함
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          text: '전체',
        ),
        Tab(
          text: '입주민',
        ),
        Tab(
          text: '외부',
        ),
      ],
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}
