import 'package:finance/rightback.dart';
import 'package:flutter/material.dart';

class SettingsRow extends StatelessWidget {
  final String name;
  const SettingsRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>MyWidget()));
      },
      splashColor: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70)),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white70)
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
