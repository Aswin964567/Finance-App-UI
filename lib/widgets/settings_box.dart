import 'package:finance/widgets/settings_row.dart';
import 'package:flutter/material.dart';

class SettingsBox extends StatelessWidget {
  final String title;
  final List<SettingsRow> rows;
  const SettingsBox({super.key, required this.title, required this.rows});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF252530),
        ),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white38)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ...rows,
          const SizedBox(height: 5),
        ]),
      ),
    );
  }
}
