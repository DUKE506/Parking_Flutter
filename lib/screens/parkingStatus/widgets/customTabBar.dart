import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key, required this.currentIndex, required this.onTabSelected});
  final int currentIndex;
  final Function(int) onTabSelected;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<String> items = [
    '전체',
    '입주민',
    '방문',
    '외부',
  ];
  late int currentIdx;

  @override
  void initState() {
    super.initState();
    currentIdx = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 35,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {widget.onTabSelected(index)},
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: widget.currentIndex == index
                      ? const Color.fromARGB(255, 22, 21, 21)
                      : Colors.white,
                  border: Border.all(
                      width: 1,
                      color: widget.currentIndex == index
                          ? Colors.black
                          : Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  items[index],
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: widget.currentIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: widget.currentIndex == index
                        ? Colors.white
                        : Colors.black,
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
