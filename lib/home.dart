

import 'package:finance/widgets/arrow_button.dart';
import 'package:finance/widgets/container_bar.dart';
import 'package:finance/widgets/crypto_box.dart';
import 'package:finance/widgets/tab_bar.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          const ContainerBar(),
          const SizedBox(
            height: 30,
          ),
          const ArrowButton(),
          const SizedBox(
            height: 30,
          ),
          const TabBarWidget(),
          Expanded(
            child: ListView(
              children: const [
                CryptoBox(),
                CryptoBox(),
                CryptoBox(),
                CryptoBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
