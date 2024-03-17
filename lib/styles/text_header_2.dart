import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TextHeader2 extends StatelessWidget {
  const TextHeader2({super.key, required this.data, required this.fontSize});
  final String data;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: CustomColor.btnSecondary,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'galvitra',
      ),
    );
  }
}
