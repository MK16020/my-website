import 'package:flutter/material.dart';
import 'package:my_website/constants/colors.dart';
import 'package:my_website/styles/regular_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onPressed, required this.color});
  final String title;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        ),
        child: RegularText(data: title, color: CustomColor.whiteSecondary, fontSize: 20),
      ),
    );
  }
}
