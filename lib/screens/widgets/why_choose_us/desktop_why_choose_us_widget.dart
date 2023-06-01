import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

import '../common_widget/elevated_button_secondary_widget.dart';
import 'why_choose_us_card_widget.dart';

Widget desktopWhyChooseUsWidget(double screenWidth) {
  return Container(
    margin: const EdgeInsets.only(bottom: 100),
    child: Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppText.WhyChooseUs,
              style: TextStyle(
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.bold,
                  fontSize: 45),
            )
          ],
        ),
        const SizedBox(height: 48),
        SizedBox(
          height: 750,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WhyChooseUsCardWidget(screenWidth: screenWidth, index: 0),
                    WhyChooseUsCardWidget(screenWidth: screenWidth, index: 1),
                    WhyChooseUsCardWidget(screenWidth: screenWidth, index: 2)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImage.whyChooseUsImg),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: AppColors.colorPrimary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28, vertical: 28.0),
                              child: AutoSizeText(
                                AppText.WhyChooseUsReason,
                                maxLines: 10,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Open-Sans',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                height: screenWidth > 450 ? 58 : 35,
                                width: screenWidth > 450 ? 176 : 110,
                                child: ElevatedButtonSecondaryWidget(
                                  buttonLabel: AppText.learnMore,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 710,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WhyChooseUsCardWidget(screenWidth: screenWidth, index: 3),
                      WhyChooseUsCardWidget(screenWidth: screenWidth, index: 4),
                      WhyChooseUsCardWidget(screenWidth: screenWidth, index: 5)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
