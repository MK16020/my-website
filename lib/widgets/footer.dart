import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/regular_text.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: CustomColor.bgLight2,
      child: const Center(
        child: RegularText(data: '© March, 2024  Maryam Alkhamis '),
      ),
    );
  }
}
