import 'package:flutter/material.dart';

class Elevatedbutton extends StatefulWidget {
  const Elevatedbutton({super.key});

  @override
  State<Elevatedbutton> createState() => _ElevatedbuttonState();
}

class _ElevatedbuttonState extends State<Elevatedbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            backgroundColor: Color(0xff218fd3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )),
        onPressed: () => {},
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 22,
            ),
            Text(
              '입주민차량 등록',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
