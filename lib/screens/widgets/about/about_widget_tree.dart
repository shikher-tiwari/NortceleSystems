import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_about_widget.dart';
import 'mobile_widget.dart';
import 'tablet_about_widget.dart';

class WelcomeSection extends StatefulWidget {
  const WelcomeSection({super.key});

  @override
  State<WelcomeSection> createState() => _WelcomeSectionState();
}

class _WelcomeSectionState extends State<WelcomeSection> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileWelcomeSection(),
      tablet: (BuildContext context) =>
          tabletWelcomeSection(screenWidth, screenHeight),
      desktop: (BuildContext context) => desktopWelcomeSection(),
    );
  }
}
