import 'package:flutter/material.dart';
import 'package:parking_flutter/models/parkingCar.dart';

class ParkingListWidget extends StatefulWidget {
  const ParkingListWidget({super.key, required this.datas});
  final List<ParkingCar> datas;

  @override
  State<ParkingListWidget> createState() => _ParkingListWidgetState();
}

class _ParkingListWidgetState extends State<ParkingListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.datas.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () => {/** 클릭 시 상세 */},
            child: Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.datas[index].carNumber.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('2025-01-08 07:54:24')
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(widget.datas[index].ownerType.labelKo),
                ],
              ),
            ));
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 1,
          color: const Color(0xffd3d3d3),
        );
      },
    );
  }
}
