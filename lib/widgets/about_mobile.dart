import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/regular_text.dart';
import '../styles/text_header_2.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      color: CustomColor.whiteSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextHeader2(data: 'About Me', fontSize: 30),
              SizedBox(
                width: screenWidth * 0.55,
                child: const RegularText(
                  data:
                      'Skilled Technologist with experience configuring computers, servers,and peripheral devices to work within established company and security parameters. Adept at managing permissions, filters, and file sharing. Devoted troubleshooter with deep understanding of system architecture and diagnostics. ',
                  fontSize: 15,
                ),
              ),
              Image.asset(
                'assets/images/heart.gif',
                width: screenWidth * 0.65,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
