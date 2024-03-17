import 'package:flutter/material.dart';

import '../styles/custom_header_decoration.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomHeaderDecoration,
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(children: [
        Image.asset('assets/images/logo.png', height: 30, fit: BoxFit.cover),
        const Spacer(),
        IconButton(
          onPressed: onMenuTap,
          icon: const Icon(Icons.menu),
        ),
        const SizedBox(width: 15),
      ]),
    );
  }
}
