import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/custom_button.dart';
import '../styles/regular_text.dart';
import '../styles/text_header.dart';
import '../styles/text_header_2.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.whiteSecondary,
      child: Column(
        children: [
          const TextHeader(data: 'My works', fontSize: 40),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            color: CustomColor.bgLight1,
            width: screenWidth,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                const TextHeader2(data: 'Project name', fontSize: 30),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Demo_project.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  height: 350,
                  margin: const EdgeInsets.all(10),
                ),
                const RegularText(
                  data:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  color: CustomColor.whiteSecondary,
                ),
                const SizedBox(height: 20),
                CustomButton(title: 'Learn More', onPressed: () {}, color: CustomColor.btnPrimary),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
