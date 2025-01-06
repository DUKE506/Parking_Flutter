import 'package:flutter/material.dart';
import 'package:parking_flutter/screens/search/widgets/searchBar.dart';
import 'package:parking_flutter/widgets/appBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _bodyWidget() {
    return Column(
      children: [
        Searchbar(),
      ],
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
