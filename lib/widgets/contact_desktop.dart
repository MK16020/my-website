import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../styles/custom_button.dart';
import '../styles/custom_text_field.dart';
import '../styles/text_header.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({
    super.key,
    required this.screenWidth,
    required this.nameController,
    required this.emailController,
    required this.messageController,
  });

  final double screenWidth;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgLight1,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextHeader(data: 'Let\'s get in touch', fontSize: (screenWidth / 20 < 30 ? 30 : screenWidth / 20)),
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: CustomColor.bgLight2.withOpacity(0.7),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 140,
                      child: CustomTextField(
                        name: 'Name',
                        inputController: nameController,
                        hint: 'Write your name',
                        isRequired: true,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 300,
                      height: 140,
                      child: CustomTextField(
                        name: 'Email',
                        inputController: emailController,
                        hint: 'Write your email',
                        isRequired: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 615,
                  height: 300,
                  child: CustomTextField(
                    name: 'Message',
                    inputController: messageController,
                    hint: 'Write your message',
                    isRequired: true,
                    maxLines: 10,
                  ),
                ),
                CustomButton(
                  title: 'Submit',
                  onPressed: () {},
                  color: CustomColor.btnPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
