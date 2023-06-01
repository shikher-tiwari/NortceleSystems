import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_copyright_footer_widget.dart';
import 'mobile_copyright_footer_widget.dart';
import 'tablet_copyright_footer_widget.dart';

class CopyrightFooter extends StatefulWidget {
  const CopyrightFooter({super.key});

  @override
  State<CopyrightFooter> createState() => _CopyrightFooterState();
}

class _CopyrightFooterState extends State<CopyrightFooter> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileCopyrightFooterWidget(),
      tablet: (BuildContext context) => tabletCopyrightFooterWidget(),
      desktop: (BuildContext context) => desktopCopyrightFooterWidget(),
    );
  }
}
