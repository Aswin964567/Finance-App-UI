import 'package:finance/widgets/buy_box.dart';
import 'package:finance/widgets/green_button.dart';
import 'package:finance/widgets/subtitle.dart';
import 'package:finance/widgets/title.dart';
import 'package:flutter/material.dart';

class SendCoin extends StatelessWidget {
  const SendCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainTitle(title: "Send"),
            const SubTitle(title: "Select Currency"),
            const BuyBox(
              coinName: 'Bitcoin',
              nameToIcon: 220,
            ),
            const SizedBox(
              height: 20,
            ),
            const SubTitle(title: 'Address'),
            Center(
              child: Container(
                width: 390,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF252530),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 15),
                      Text(
                        "010223jjnbee5eeu28929100394...      ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                      ),
                      Icon(
                        Icons.qr_code,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Only BTC can be send to this address",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const SubTitle(title: 'Amount'),
            Center(
              child: Container(
                width: 390,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF252530),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Text(
                        "0.025BTC (\$750.0)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Balance: 3.56 BTC",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
            ),
            GreenButton(text: 'Send')
          ],
        ),
      ),
    );
  }
}
