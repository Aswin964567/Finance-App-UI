import 'package:finance/buy.dart';
import 'package:finance/widgets/arrow_button.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 170, 170, 241),
        )),
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(40),
          topStart: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const SizedBox(
                width: 27,
              ),
              const ArrowButton(),
              const SizedBox(
                width: 27,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const BuySell()));
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/dollar.png',
                      height: 80,
                    ),
                    const Text("Send",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
