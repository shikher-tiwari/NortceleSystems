import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.arrow_forward,
        color: AppColors.colorPrimary,
        size: 20,
      ),
      label: Text(
        labelText,
        style: const TextStyle(
            fontFamily: 'Open-Sans', fontSize: 16, color: AppColors.colorWhite),
      ),
    );
  }
}
