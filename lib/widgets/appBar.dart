import 'package:flutter/material.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final List<IconButton>? icons;
  const Appbar({super.key, this.title, this.icons});

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFEEF2F5),
      title: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          widget.title ?? '',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff218FD3)),
        ),
      ),
      elevation: 0,
      actions: widget.icons,
    );
  }
}
