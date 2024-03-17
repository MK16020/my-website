import 'package:flutter/material.dart';
import 'package:my_website/styles/regular_text.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (var skill in skillItems)
          Chip(
            avatar: Image.asset(skill['img']),
            label: RegularText(
              data: skill['title'],
              color: CustomColor.whiteSecondary,
              fontSize: 15,
            ),
            backgroundColor: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
          ),
      ],
    );
  }
}
