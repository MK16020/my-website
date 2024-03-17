import 'package:flutter/material.dart';
import 'package:my_website/styles/custom_button.dart';
import 'package:my_website/styles/text_header.dart';

import '../constants/colors.dart';
import '../styles/regular_text.dart';
import '../styles/text_header_2.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      color: CustomColor.whiteSecondary,
      child: Column(
        children: [
          TextHeader(data: 'My Works', fontSize: (screenWidth / 20 < 30 ? 30 : screenWidth / 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 30),
              Container(
                color: CustomColor.bgLight1,
                width: screenWidth * 0.45,
                height: 500,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Demo_project.jpg'),
                    ),
                  ),
                  margin: const EdgeInsets.all(10),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextHeader2(
                    data: 'Project name',
                    fontSize: (screenWidth / 25 < 20 ? 20 : screenWidth / 25),
                  ),
                  SizedBox(
                    width: screenWidth * 0.3,
                    child: const RegularText(
                      data:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(title: 'Learn More', onPressed: () {}, color: CustomColor.btnPrimary),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
