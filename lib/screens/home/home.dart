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
      backgroundColor: const Color(0xFFEEF2F5),
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
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
        ),
      ),
    );
  }

  //아이콘 버튼튼
  Widget _button() {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            backgroundColor: Color(0xff218fd3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )),
        onPressed: () => {},
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 22,
            ),
            Text(
              '입주민차량 등록',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }

  //입주민차량등록록
  Widget _carAdd() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            '입주민차량 등록',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          _button()
        ]),
      ),
    );
  }

  Widget _bodyWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _parkingState(),
          SizedBox(
            height: 40,
          ),
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
