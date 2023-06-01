import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class CircularElevatedButtonWidget extends StatelessWidget {
  const CircularElevatedButtonWidget({super.key, required this.iconName});

  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColors.colorPrimary),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            iconName,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
