import 'package:flutter/material.dart';

class ParkingNumCardWidget extends StatelessWidget {
  final int parkingNum;
  final String title;
  final Color color;

  const ParkingNumCardWidget(
      {super.key,
      required this.parkingNum,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFFEEF2F5),
        borderRadius: BorderRadius.circular(6),
        // border: Border.all(width: 1, color: Color.fromARGB(255, 206, 214, 219)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: color,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              parkingNum.toString(),
              style: TextStyle(
                fontSize: 18,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
