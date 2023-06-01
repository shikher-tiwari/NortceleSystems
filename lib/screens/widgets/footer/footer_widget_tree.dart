import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_footer_widget.dart';
import 'mobile_footer_widget.dart';
import 'tablet_footer_widget.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileFooterWidget(),
      tablet: (BuildContext context) => tabletFooterWidget(),
      desktop: (BuildContext context) => desktopFooterWidget(),
    );
  }
}
