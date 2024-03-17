import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';
import '../styles/regular_text.dart';
import '../widgets/skills.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (var platform in platformItems)
                Container(
                  decoration: const BoxDecoration(
                    color: CustomColor.bgLight1,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: 200,
                  child: ListTile(
                    leading: Icon(platform['icon']),
                    title: RegularText(
                      data: platform['title'],
                      color: CustomColor.whiteSecondary,
                      fontSize: 15,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: const Skills(),
          ),
        ),
      ],
    );
  }
}
