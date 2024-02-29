import 'package:finance/widgets/green_button.dart';
import 'package:finance/widgets/title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiveCoin extends StatelessWidget {
  const ReceiveCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const MainTitle(
                title: 'Receive',
                gap: 110,
              ),
              Image.asset(
                'assets/Logo.png',
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                "BTC (BEP20)",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Image.asset(
                  'assets/qr_big.png',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 390,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF252530),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "010223jjnbee5eeu289291003945hk\n                   k42f22keem1a3",
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Only BTC can be send to this address",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GreenButton(
                    text: 'Share',
                    buttonColor: Color(0xFF252530),
                    buttonWidth: 170,
                    textColor: Colors.white60,
                  ),
                  GreenButton(
                    text: 'Copy',
                    buttonWidth: 170,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
