import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final double buttonWidth;
  final Color buttonColor;
  final Color textColor;
  const GreenButton(
      {super.key,
      required this.text,
      this.buttonWidth = 390,
      this.buttonColor = const Color(0xFFBFF5C7),
      this.textColor = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: textColor),
        ),
      ),
    );
  }
}
