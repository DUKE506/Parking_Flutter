import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/screens/parkingStatus/widgets/tabBar.dart';

class ParkingStatus extends StatefulWidget {
  const ParkingStatus({super.key});

  @override
  State<ParkingStatus> createState() => _ParkinStatusState();
}

class _ParkinStatusState extends State<ParkingStatus> {
  //애빠
  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: const Color(0xFFEEF2F5),
      leading: IconButton(
        onPressed: () => {context.pop()},
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        '주차현황',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: const Color(0xff218FD3),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: Column(
          children: [
            TabBarWidget(),
          ],
        ));
  }
}
