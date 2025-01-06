import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 158, 158, 158)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [],
      ),
    );
  }
}
