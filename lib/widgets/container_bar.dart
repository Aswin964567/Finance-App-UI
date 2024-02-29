import 'package:flutter/material.dart';

class ContainerBar extends StatelessWidget {
  const ContainerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.white54)
            ),
            borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(40),
              bottomStart: Radius.circular(40),

            ),
            gradient: LinearGradient(
              colors: [
                Colors.black45,
                Color(0xFFBFF5C7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.qr_code_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Your Balance",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFAAAAAA),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Image.asset('assets/Arrow 1.png')
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\$15,938.56',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFF5F5F5),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "+\$1204 (7.55%)",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFBFF5C7),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/graph3.png',
                      width: 200,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
