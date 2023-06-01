import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  const CustomTextFormField({super.key, this.labelText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.colorGreyShade1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: TextFormField(
          style: const TextStyle(color: Colors.grey),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
