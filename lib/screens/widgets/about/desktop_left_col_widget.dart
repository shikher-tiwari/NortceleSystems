import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

import '../common_widget/elevated_button_primary_widget.dart';

class DesktopLeftColWidget extends StatelessWidget {
  const DesktopLeftColWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: AppText.companyIntroWelcome,
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ),
              TextSpan(
                text: AppText.companyName,
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: AppColors.colorPrimary),
              ),
            ],
          ),
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '\n${AppText.companyIntroTagline}',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorPrimary),
              ),
              TextSpan(
                text: '\n\n${AppText.companyIntro}',
                style: TextStyle(
                    fontFamily: 'Open-Sans',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    height: 1.5,
                    letterSpacing: 1.2,
                    color: AppColors.colorGreyShade1),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        const SizedBox(
          height: 58,
          width: 166,
          child: ElevatedButtonPrimaryWidget(
              elevatedButtonLabel: AppText.getAQuote),
        ),
      ],
    );
  }
}
