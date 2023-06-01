import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class ElevatedButtonPrimaryWidget extends StatelessWidget {
  const ElevatedButtonPrimaryWidget(
      {super.key, required this.elevatedButtonLabel});
  final String elevatedButtonLabel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<StadiumBorder>(const StadiumBorder(
              side: BorderSide(color: AppColors.colorPrimary))),
          backgroundColor:
              const MaterialStatePropertyAll(AppColors.colorPrimary)),
      onPressed: () {},
      child: Text(
        elevatedButtonLabel,
        style: const TextStyle(
            fontFamily: 'Barlow', fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
