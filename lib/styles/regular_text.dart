import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RegularText extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;

  const RegularText({
    super.key,
    required this.data,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? CustomColor.hintDark,
        fontSize: fontSize ?? 20,
        fontFamily: 'relevance',
      ),
      softWrap: true,
      overflow: TextOverflow.clip,
    );
  }
}
