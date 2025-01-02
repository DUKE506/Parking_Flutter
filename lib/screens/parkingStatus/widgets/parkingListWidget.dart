import 'package:flutter/material.dart';

class ParkingListWidget extends StatefulWidget {
  const ParkingListWidget({super.key, required this.pageNum});
  final int pageNum;
  @override
  State<ParkingListWidget> createState() => _ParkingListWidgetState();
}

class _ParkingListWidgetState extends State<ParkingListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.pageNum.toString()),
    );
  }
}
