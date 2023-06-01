import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

import 'tablet_about_lower_widget.dart';
import 'tablet_about_upper_widget.dart';

Widget tabletWelcomeSection(double screenWidth, double screenHeight) {
  return Container(
    color: AppColors.colorSecondary,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            children: [
              TabletWelcomeUpperWidget(),
            ],
          ),
        ),
        Row(
          children: [
            TabletWelcomeLowerWidget(
              screenWidth: screenWidth,
            ),
          ],
        )
      ],
    ),
  );
}
