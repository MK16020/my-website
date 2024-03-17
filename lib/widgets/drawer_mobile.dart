import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key, required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.bgLight2,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (var i = 0; i < navIcon.length; i++)
            ListTile(
              leading: Icon(navIcon[i]),
              title: Text(
                navTitles[i],
                style: const TextStyle(
                  color: CustomColor.txtHeader,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              onTap: () {
                onNavItemTap(i);
              },
            ),
        ],
      ),
    );
  }
}
