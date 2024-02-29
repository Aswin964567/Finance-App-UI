import 'package:finance/home.dart';
import 'package:finance/buy.dart';
import 'package:finance/academy.dart';
import 'package:finance/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int myCurrentIndex = 0;

  List pages = [
    const HomeScreen(),
    const BuySell(),
    const Academy(),
    const SettingsWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: GNav(
            selectedIndex: myCurrentIndex,
            onTabChange: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            backgroundColor: const Color(0xFF17171F),
            color: Colors.grey,
            activeColor: const Color(0xFFBFF5C7),
            // tabBackgroundColor: Colors.grey.shade800,
            gap: 6,
            tabs: const [
              GButton(
                icon: Icons.account_balance_wallet,
                text: "Wallet",
              ),
              GButton(
                icon: Icons.attach_money_sharp,
                text: 'Buy/Sell',
              ),
              GButton(
                icon: Icons.school,
                text: 'Academy',
              ),
              GButton(
                icon: Icons.settings_sharp,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
