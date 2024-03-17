import 'package:flutter/material.dart';
import 'package:my_website/constants/colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.data, required this.fontSize});
  final String data;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: CustomColor.txtHeader,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'galvitra',
      ),
    );
  }
}
