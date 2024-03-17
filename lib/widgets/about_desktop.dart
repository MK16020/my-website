import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/regular_text.dart';
import '../styles/text_header_2.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    required this.screenWidth,
    required this.screenHeight,
    super.key,
  });
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      color: CustomColor.whiteSecondary,
      height: screenHeight * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHeader2(data: 'About Me', fontSize: screenWidth / 20),
              SizedBox(
                width: screenWidth * 0.45,
                child: const RegularText(
                  data:
                      'Skilled Technologist with experience configuring computers, servers,and peripheral devices to work within established company and security parameters. Adept at managing permissions, filters, and file sharing. Devoted troubleshooter with deep understanding of system architecture and diagnostics. ',
                ),
              ),
            ],
          ),
          const SizedBox(width: 70),
          Image.asset(
            'assets/images/heart.gif',
            width: 200,
          ),
        ],
      ),
    );
  }
}
