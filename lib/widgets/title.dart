import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final double gap;
  final double height;
  const MainTitle(
      {super.key, this.gap = 120, required this.title, this.height = 35});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_arrow_left_sharp,
                size: 40,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              width: gap,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white60,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height,
        ),
      ],
    );
  }
}
