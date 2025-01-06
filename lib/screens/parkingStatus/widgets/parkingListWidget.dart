import 'package:flutter/material.dart';

class ParkingListWidget extends StatefulWidget {
  const ParkingListWidget(
      {super.key, required this.pageNum, this.ListCount, required this.datas});
  final int pageNum;
  final int? ListCount;
  final List<Map<String, dynamic>> datas;

  @override
  State<ParkingListWidget> createState() => _ParkingListWidgetState();
}

class _ParkingListWidgetState extends State<ParkingListWidget> {
  String _getTypetoOwnerName(Map<String, dynamic> data) {
    switch (data['type'].toString()) {
      case 'RESIDENT':
        return data['ownerName'].toString();
      case 'OUTSIDER':
        return '외부인';
      case 'VISIT':
        return '방문자';
      default:
        return '알수없음';
    }
  }

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
                        widget.datas[index]['vehicleNumber'].toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.datas[index]['createdAt'].toString())
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(_getTypetoOwnerName(widget.datas[index])),
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
