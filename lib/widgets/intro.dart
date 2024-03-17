import 'package:flutter/material.dart';

import '../styles/text_header.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 60, right: 20, bottom: 20),
      width: screenWidth,
      height: screenHeight * 0.6,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Image.asset('assets/images/stars.png', height: screenWidth * 0.2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextHeader(data: 'Hi I am', fontSize: screenWidth / 15 < 30 ? 30 : screenWidth / 15),
              TextHeader(data: 'Maryam', fontSize: screenWidth / 15 < 30 ? 30 : screenWidth / 15),
            ],
          ),
          Image.asset('assets/images/stars.png', height: screenWidth * 0.2),
        ],
      ),
    );
  }
}
