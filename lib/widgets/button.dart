import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String? label;
  final Icon? icon;
  final bool isDisabled;
  final VoidCallback? onPressed;
  const Button({
    super.key,
    this.label,
    this.icon,
    this.isDisabled = false,
    this.onPressed,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        widget.onPressed?.call(),
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Color(0xff218fd3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon ?? SizedBox.shrink(),
              Text(
                widget.label ?? '',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
