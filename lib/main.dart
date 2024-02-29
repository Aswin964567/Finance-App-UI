

import 'package:finance/nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF17171F),
        ),
        debugShowCheckedModeBanner: false,
        home:const NavBar(),),
  );
}
