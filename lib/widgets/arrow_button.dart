import 'package:finance/receive.dart';
import 'package:finance/send.dart';
import 'package:finance/swap.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const SendCoin()));
          },
          child: Column(
            children: [
              Image.asset('assets/Frame 1.png'),
              const Text("Send",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white))
            ],
          ),
        ),
        const SizedBox(
          width: 35,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const ReceiveCoin()));
          },
          child: Column(
            children: [
              Image.asset('assets/Frame 2.png'),
              const Text(
                "Receive",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 35,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => const SwapCoin()));
          },
          child: Column(
            children: [
              Image.asset('assets/Frame 3.png'),
              const Text(
                "Swap",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
