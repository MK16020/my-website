import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/custom_header_decoration.dart';

class HeaderDesktop extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final Function(int) onNavMenuTap;
  const HeaderDesktop({super.key, this.onLogoTap, required this.onNavMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomHeaderDecoration,
      width: double.maxFinite,
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(children: [
        Image.asset('assets/images/logo.png', height: 40, fit: BoxFit.cover),
        const Spacer(),
        for (var i = 0; i < navTitles.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {
                onNavMenuTap(i);
              },
              child: Text(
                navTitles[i],
                style: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
