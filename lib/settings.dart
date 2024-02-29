import 'package:finance/widgets/settings_box.dart';
import 'package:finance/widgets/settings_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Settings",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 50),
                SettingsBox(
                  title: 'Trade',
                  rows: [
                    SettingsRow(name: 'Crypto Wallet'),
                    SettingsRow(name: 'Track'),
                    SettingsRow(name: 'Flat Wallet'),
                    SettingsRow(name: 'Recurring Buy')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SettingsBox(
                  title: 'Spend',
                  rows: [
                    SettingsRow(name: 'Card'),
                    SettingsRow(name: 'Pay'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SettingsBox(
                  title: 'Finance',
                  rows: [
                    SettingsRow(name: 'Supercharger'),
                    SettingsRow(name: 'Earn'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SettingsBox(
                  title: 'More',
                  rows: [
                    SettingsRow(name: 'Rewards'),
                    SettingsRow(name: 'Refer'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
