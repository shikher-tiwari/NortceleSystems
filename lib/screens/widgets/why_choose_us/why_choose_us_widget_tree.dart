import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_why_choose_us_widget.dart';
import 'mobile_why_choose_us_widget.dart';
import 'tablet_why_choose_us_widget.dart';

class WhyChooseUs extends StatefulWidget {
  const WhyChooseUs({super.key});

  @override
  State<WhyChooseUs> createState() => _WhyChooseUsState();
}

class _WhyChooseUsState extends State<WhyChooseUs> {
  int get index => 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileWhyChooseUsWidget(screenWidth),
      tablet: (BuildContext context) => tabletWhyChooseUsWidget(screenWidth),
      desktop: (BuildContext context) => desktopWhyChooseUsWidget(screenWidth),
    );
  }
}
