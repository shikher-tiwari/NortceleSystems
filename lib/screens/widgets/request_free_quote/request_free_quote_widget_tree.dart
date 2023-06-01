import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_request_free_quote_widget.dart';
import 'mobile_request_free_quote_widget.dart';
import 'tablet_request_free_quote_widget.dart';

class RequestFreeQuote extends StatefulWidget {
  const RequestFreeQuote({super.key});

  @override
  State<RequestFreeQuote> createState() => _RequestFreeQuoteState();
}

class _RequestFreeQuoteState extends State<RequestFreeQuote> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>
          mobileRequestFreeQuoteWidget(screenWidth),
      tablet: (BuildContext context) =>
          tabletRequestFreeQuoteWidget(screenWidth),
      desktop: (BuildContext context) =>
          desktopRequestFreeQuoteWidget(screenWidth),
    );
  }
}
