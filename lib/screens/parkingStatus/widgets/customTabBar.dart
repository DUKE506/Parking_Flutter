import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.currentIndex, required this.onTabSelected});
  final int currentIndex;
  Functin(int) onTabSelected;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<String> items = [
    '전체',
    '입주민',
    '외부',
  ];
  late int currentIdx;

  @override
  void initState() {
    super.initState();
    currentIdx = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              setState(() {
                currentIdx = index;
              })
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: currentIdx == index ? Colors.black : Colors.white,
                  border: Border.all(
                      width: 1,
                      color: currentIdx == index ? Colors.black : Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  items[index],
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: currentIdx == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: currentIdx == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}