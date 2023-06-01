import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

import 'mobile_about_lower_widget.dart';
import 'mobile_about_upper_widget.dart';

Widget mobileWelcomeSection() {
  return IntrinsicHeight(
    child: Container(
      color: AppColors.colorSecondary,
      width: double.infinity,
      height: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MobileWelcomeUpperWidget(),
          MobileWelcomeLowerWidget()
        ],
      ),
    ),
  );
}
