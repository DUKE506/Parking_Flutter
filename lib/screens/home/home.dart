import 'package:flutter/material.dart';
import 'package:parking_flutter/screens/home/widgets/parking_num_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //appbar
  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        '일동미라주아파트',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff218FD3)),
      ),
      elevation: 0,
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.notifications))
      ],
    );
  }

  //주차 현황
  Widget _parkingState() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '주차현황',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ParkingNumCardWidget(
              parkingNum: 60,
              title: '전체',
              color: Color(0xff000000),
            ),
            ParkingNumCardWidget(
              parkingNum: 52,
              title: '입주민',
              color: Color(0xff218FD3),
            ),
            ParkingNumCardWidget(
              parkingNum: 8,
              title: '외부',
              color: Color(0xffCB2727),
            ),
          ],
        ),
      ],
    );
  }

  Widget _carAdd() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '주차현황',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]);
  }

  Widget _bodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _parkingState(),
          _carAdd(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _bodyWidget(),
    );
  }
}
