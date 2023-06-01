import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_what_say_our_clients_widget.dart';
import 'mobile_what_say_our_clients_widget.dart';
import 'tablet_what_say_our_clients_widget.dart';

class WhatSayOurClient extends StatefulWidget {
  const WhatSayOurClient({super.key});

  @override
  State<WhatSayOurClient> createState() => _WhatSayOurClientState();
}

class _WhatSayOurClientState extends State<WhatSayOurClient> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileWhatSayOurClient(screenWidth),
      tablet: (BuildContext context) => tabletWhatSayOurClient(screenWidth),
      desktop: (BuildContext context) =>
          desktopWhatSayOurClientWidget(screenWidth),
    );
  }
}
