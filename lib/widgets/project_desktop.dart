import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../constants/colors.dart';
import '../constants/projects.dart';
import '../styles/regular_text.dart';
import '../styles/text_header.dart';
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
      width: screenWidth,
      child: Column(
        children: [
          TextHeader(data: 'My Works', fontSize: (screenWidth / 20 < 30 ? 30 : screenWidth / 20)),
          for (var project in projectInfo)
            Container(
              margin: const EdgeInsets.only(bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    color: CustomColor.bgLight1,
                    width: screenWidth * 0.45,
                    height: 500,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: CarouselSlider.builder(
                        itemCount: project['images'].length,
                        itemBuilder: ((context, index, realIndex) {
                          return buildImage(project['images'][index]);
                        }),
                        options: CarouselOptions(
                          height: 450,
                          viewportFraction: 1,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: Random().nextInt(4) + 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  SizedBox(
                    width: screenWidth * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextHeader2(
                          data: project['title'],
                          fontSize: (screenWidth / 25 < 20 ? 20 : screenWidth / 25),
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: RegularText(
                            data: project['description'],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Link(
                          uri: Uri.parse(project['GitHub']),
                          target: LinkTarget.blank,
                          builder: (context, FollowLink? openLink) => TextButton(
                            onPressed: openLink,
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              color: CustomColor.bgLight2,
                              child: const RegularText(
                                data: 'View it in GitHub',
                                color: CustomColor.whiteSecondary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  Widget buildImage(String project) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(project),
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25),
      );
}
