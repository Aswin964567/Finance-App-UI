import 'package:flutter/material.dart';

class BuyBox extends StatelessWidget {
  final String img;
  final double imgHeight;
  final String coinName;
  final String price;
  final double nameToIcon;
  final String subPrice;
  const BuyBox(
      {super.key,
      this.img = 'assets/Logo.png',
      this.imgHeight = 50,
      this.coinName = 'USD',
      this.price = '',
      this.nameToIcon = 10,
      this.subPrice = ''});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF252530),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            Image.asset(
              img,
              height: imgHeight,
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                Text(
                  coinName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFBFF5C7),
                  ),
                ),
                SizedBox(
                  width: nameToIcon,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Color(0xFFBFF5C7),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFBFF5C7),
                    ),
                  ),
                  Text(
                    subPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFBFF5C7),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
