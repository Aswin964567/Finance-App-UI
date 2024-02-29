import 'package:finance/widgets/buy_box.dart';
import 'package:finance/widgets/green_button.dart';
import 'package:finance/widgets/payment.dart';
import 'package:flutter/material.dart';

class BuySell extends StatelessWidget {
  const BuySell({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Buy & Sell",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "You pay",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white60),
                    ),
                    Text(
                      "Balance: \$15668.56",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white38),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BuyBox(
                img: 'assets/dollar.png',
                price: '\$270.00',
                imgHeight: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "You receive",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BuyBox(
                img: 'assets/Logo.png',
                coinName: 'BitCoin',
                price: "0.0095 BTC",
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Payment method",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white60),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PaymentBox(),
              SizedBox(
                height: 30,
              ),
              GreenButton(text: "Continue")
            ],
          ),
        ),
      ),
    );
  }
}
