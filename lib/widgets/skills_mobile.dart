import 'package:flutter/material.dart';
import 'package:my_website/styles/regular_text.dart';
import 'package:my_website/widgets/skills.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (var platform in platformItems)
            Container(
              decoration: const BoxDecoration(
                color: CustomColor.bgLight1,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 5),
              child: ListTile(
                leading: Icon(platform['icon']),
                title: RegularText(
                  data: platform['title'],
                  color: CustomColor.whitePrimary,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),
          const SizedBox(height: 50),
          const Skills(),
        ],
      ),
    );
  }
}
