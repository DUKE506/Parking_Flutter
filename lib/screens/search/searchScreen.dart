import 'package:flutter/material.dart';
import 'package:parking_flutter/screens/search/widgets/searchBar.dart';
import 'package:parking_flutter/screens/search/widgets/searchListWidget.dart';
import 'package:parking_flutter/widgets/appBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _searchAreaWidget() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SearchListWidget(),
      ),
    );
  }

  Widget _bodyWidget() {
    return Container(
      // color: Colors.white,

      child: Column(
        children: [
          SizedBox(height: 20),
          Searchbar(),
          SizedBox(
            height: 40,
          ),
          _searchAreaWidget(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: '차량조회',
      ),
      body: _bodyWidget(),
    );
  }
}
