import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

Widget tabletCopyrightFooterWidget() {
  return Container(
    decoration: const BoxDecoration(
      color: AppColors.colorDark,
      border: Border(
        top: BorderSide(
          color: AppColors.colorSecondary,
          width: 0.5,
        ),
      ),
    ),
    height: 80,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(children: [
            TextSpan(
              text: AppText.copyrightText,
              style: TextStyle(
                  fontFamily: 'Open-Sans',
                  fontSize: 16,
                  color: AppColors.colorWhite),
            )
          ]),
        ),
        const SizedBox(height: 30)
      ],
    ),
  );
}
