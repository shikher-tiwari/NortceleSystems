import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

import 'desktop_left_col_widget.dart';
import 'desktop_right_col_widget.dart';

Widget desktopWelcomeSection() {
  return Container(
    color: AppColors.colorPrimary,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: AppColors.colorSecondary,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: DesktopLeftColWidget(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.colorPrimary,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: DesktopRightColWidget(),
            ),
          ),
        )
      ],
    ),
  );
}
