import 'package:flutter/material.dart';
import 'package:my_website/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.name,
    required this.inputController,
    this.formIcon,
    required this.hint,
    this.isRequired,
    this.maxLines,
  });
  final String name, hint;
  final bool? isRequired;
  final Icon? formIcon;
  final TextEditingController inputController;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(color: CustomColor.hintDark, fontSize: 16, fontFamily: 'relevance'),
        ),
        SizedBox(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: CustomColor.hintDark)),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              controller: inputController,
              decoration: formIcon == null
                  ? InputDecoration(
                      hintText: hint,
                      hintStyle: const TextStyle(color: CustomColor.hintDark, fontSize: 16, fontFamily: 'relevance'),
                      border: InputBorder.none,
                    )
                  : InputDecoration(icon: formIcon, hintText: hint, border: InputBorder.none),
              keyboardType: TextInputType.multiline,
              style: const TextStyle(color: CustomColor.hintDark, fontSize: 16, fontFamily: 'relevance'),
              maxLines: maxLines ?? 1,
              validator: (value) {
                if (isRequired ?? false) {
                  if (value!.isEmpty) {
                    return 'This Field is required';
                  }
                  return null;
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ],
    );
  }
}
