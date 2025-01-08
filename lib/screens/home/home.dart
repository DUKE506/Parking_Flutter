import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:parking_flutter/models/parkingCar.dart';
import 'package:parking_flutter/providers/parkingCars_provider.dart';
import 'package:parking_flutter/screens/home/widgets/parking_num_card.dart';
import 'package:parking_flutter/widgets/appBar.dart';
import 'package:parking_flutter/widgets/button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  //주차 현황
  Widget _parkingState(List<ParkingCar> parkingCars) {
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
                    parkingNum: parkingCars.length,
                    title: '전체',
                    color: Color(0xff000000),
                  ),
                  ParkingNumCardWidget(
                    parkingNum: parkingCars
                        .where((p) => p.ownerType == CarOwnerType.resident)
                        .length,
                    title: '입주',
                    color: Color(0xff218FD3),
                  ),
                  ParkingNumCardWidget(
                    parkingNum: parkingCars
                        .where((p) => p.ownerType == CarOwnerType.visitor)
                        .length,
                    title: '방문',
                    color: Color(0xFF18AA1D),
                  ),
                  ParkingNumCardWidget(
                    parkingNum: parkingCars
                        .where((p) => p.ownerType == CarOwnerType.outsider)
                        .length,
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
  Widget _bodyWidget(List<ParkingCar> parkingCars) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _parkingState(parkingCars),
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
    final allParkingCar = ref.watch(parkingCarProvider);

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
      body: _bodyWidget(allParkingCar),
    );
  }
}
