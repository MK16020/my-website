import 'package:flutter/material.dart';

import '../constants/colors.dart';

const CustomHeaderDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(100)),
  gradient: LinearGradient(
    colors: [Colors.transparent, CustomColor.bgLight2],
  ),
);
