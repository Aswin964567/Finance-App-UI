import 'package:finance/widgets/balanace_box.dart';
import 'package:finance/widgets/bottom_container.dart';
import 'package:finance/widgets/subtitle.dart';
import 'package:finance/widgets/title.dart';
import 'package:flutter/material.dart';

class CoinInfo extends StatelessWidget {
  const CoinInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white54, width: 3)),
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(40),
                  bottomStart: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black45,
                    Color(0xFFC277FD),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      MainTitle(
                        title: 'BitCoin (BTC)',
                        height: 15,
                        gap: 70,
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.qr_code,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Image.asset('assets/Logo.png'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "\$30,078.60",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const Text(
                    "Change -0.21%",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'assets/wave2.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const BalanceBox(),
            const SizedBox(
              height: 25,
            ),
            const SubTitle(title: 'About'),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                  "As the first decentralized virtual currency to\nmeet widespread popularity and success, \nBitcoin has inspired a host of other cryptocurrencies in its wake.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70)),
            ),
            SizedBox(
              height: 20,
            ),
            const BottomContainer()
          ],
        ),
      ),
    );
  }
}
