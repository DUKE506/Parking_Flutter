import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/screens/home/widgets/parking_num_card.dart';
import 'package:parking_flutter/widgets/appBar.dart';
import 'package:parking_flutter/widgets/button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //주차 현황
  Widget _parkingState() {
    return GestureDetector(
      onTap: () => {context.push('/parking/status')},
      child: ClipRRect(
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
      ),
    );
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
          Button(
            label: '입주민차량 등록',
            icon: Icon(
              Icons.add,
              size: 22,
              color: Colors.white,
            ),
            onPressed: () => {print('안녕')},
          ),
        ]),
      ),
    );
  }

  //body
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
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: '일동미라주 아파트',
        icons: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: _bodyWidget(),
    );
  }
}
