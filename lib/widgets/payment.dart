import 'package:flutter/material.dart';

class PaymentBox extends StatelessWidget {
  const PaymentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF252530),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF252530),
                border: Border.all(color: Colors.white70),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Google pay",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white54),
                    ),
                    Image.asset("assets/gpay.png",
                        color: Colors.white54, fit: BoxFit.cover)
                  ],
                ),
              ),
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF252530),
                border: Border.all(color: Colors.white70),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Visa*3783",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white54),
                    ),
                    Image.asset("assets/visa.png",
                        color: Colors.white54, fit: BoxFit.cover)
                  ],
                ),
              ),
            ),
            const Center(
              child: Text(
                "+ ADD NEW PAYMENT METHOD",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
