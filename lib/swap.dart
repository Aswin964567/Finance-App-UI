import 'package:finance/widgets/buy_box.dart';
import 'package:finance/widgets/green_button.dart';
import 'package:finance/widgets/subtitle.dart';
import 'package:finance/widgets/title.dart';
import 'package:flutter/material.dart';

class SwapCoin extends StatelessWidget {
  const SwapCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainTitle(title: 'Swap'),
            const Row(
              children: [
                SubTitle(title: 'You Pay'),
                Spacer(flex: 2),
                // ignore: unnecessary_const
                const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    "Balance: 3.09ETH",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 5),
            const BuyBox(
              coinName: 'Ethereum',
              img: 'assets/eth.png',
              price: "0.15ETH",
              subPrice: "\$270.61",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SubTitle(title: 'You Receive'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Image.asset(
                    'assets/swap.png',
                  ),
                )
              ],
            ),
            const BuyBox(
              coinName: 'BitCoin',
              price: "0.0095 BTC",
              subPrice: "\$267.38",
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exchange rate",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                  Text(
                    "Exchange rate",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 340,
            ),
            const GreenButton(text: 'Swap')
          ],
        ),
      ),
    );
  }
}
