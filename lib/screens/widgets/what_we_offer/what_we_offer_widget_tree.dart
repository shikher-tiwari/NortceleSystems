import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_what_we_offer_widget.dart';
import 'mobile_what_we_offer_widget.dart';
import 'tablet_what_we_offer_widget.dart';

class WhatWeOffer extends StatefulWidget {
  const WhatWeOffer({super.key});

  @override
  State<WhatWeOffer> createState() => _WhatWeOfferState();
}

class _WhatWeOfferState extends State<WhatWeOffer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileWhatWeOfferWidget(),
      tablet: (BuildContext context) => tabletWhatWeOfferWidget(),
      desktop: (BuildContext context) => desktopWhatWeOfferWidget(),
    );
  }
}
