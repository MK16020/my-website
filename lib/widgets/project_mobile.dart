import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../constants/colors.dart';
import '../constants/projects.dart';
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
          for (var project in projectInfo)
            Container(
              padding: const EdgeInsets.all(10),
              color: CustomColor.bgLight1,
              width: screenWidth,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  TextHeader2(data: project['title'], fontSize: 30),
                  Container(
                    height: 350,
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
                        autoPlayInterval: Duration(seconds: Random().nextInt(3) + 2),
                      ),
                    ),
                  ),
                  RegularText(
                    data: project['description'],
                    color: CustomColor.whiteSecondary,
                  ),
                  const SizedBox(height: 20),
                  Link(
                    uri: Uri.parse(project['GitHub']),
                    target: LinkTarget.blank,
                    builder: (BuildContext ctx, FollowLink? openLink) {
                      return TextButton(
                        onPressed: openLink,
                        child: const RegularText(
                          data: 'View it in GitHub',
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          const SizedBox(height: 30),
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
