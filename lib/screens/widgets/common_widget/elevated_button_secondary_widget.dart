import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class ElevatedButtonSecondaryWidget extends StatelessWidget {
  const ElevatedButtonSecondaryWidget({super.key, required this.buttonLabel});

  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<StadiumBorder>(const StadiumBorder(
              side: BorderSide(color: AppColors.colorWhite))),
          foregroundColor: const MaterialStatePropertyAll(Colors.black),
          backgroundColor:
              const MaterialStatePropertyAll(AppColors.colorWhite)),
      onPressed: () {},
      child: Text(
        buttonLabel,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
