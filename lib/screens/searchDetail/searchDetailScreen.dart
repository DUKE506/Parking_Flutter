import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchDetailScreen extends StatefulWidget {
  const SearchDetailScreen({super.key});

  @override
  State<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen> {
  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => {context.pop()},
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        '차량상세조회',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _infoItemWidget(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF3E3E3E),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff313131),
          ),
        ),
      ],
    );
  }

  Widget _infoWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey[800]!),
        ),
      ),
      child: Column(
        children: [
          _infoItemWidget('이름', '김현수'),
          SizedBox(height: 25),
          _infoItemWidget('모델명', '스포티지'),
          SizedBox(height: 25),
          _infoItemWidget('차량번호', '07가 8441'),
          SizedBox(height: 25),
          _infoItemWidget('주소', 'A단지 103동 1802호'),
          SizedBox(height: 25),
          _infoItemWidget('주차상태', '출차'),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _inoutList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '07:24:45',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                '출차',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffCB2727)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //입출차 이력
  Widget _inoutHistory() {
    return Expanded(
      child: Container(
        // color: Colors.grey,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          children: [
            //타이틀
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '입출차 이력',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.tune),
              ],
            ),
            SizedBox(height: 20),
            _inoutList(),
          ],
        ),
      ),
    );
  }

  Widget _bodyWidget() {
    return Column(
      children: [
        _infoWidget(),
        _inoutHistory(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _bodyWidget(),
    );
  }
}
