import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

import 'why_choose_us_card_widget.dart';

Widget mobileWhyChooseUsWidget(double screenWidth) {
  return Container(
    width: double.infinity,
    // height: 1800,
    child: IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhyChooseUsCardWidget(screenWidth: screenWidth, index: 0),
                const SizedBox(height: 28),
                WhyChooseUsCardWidget(screenWidth: screenWidth, index: 1),
                const SizedBox(height: 28),
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
                            fit: BoxFit.fill)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: AppColors.colorPrimary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8.0),
                          child: AutoSizeText(
                            AppText.WhyChooseUsReason,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Open-Sans',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Flexible(
                          child: SizedBox(
                            height: screenWidth > 450 ? 58 : 35,
                            width: screenWidth > 450 ? 176 : 130,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<StadiumBorder>(
                                          const StadiumBorder(
                                              side: BorderSide(
                                                  color:
                                                      AppColors.colorWhite))),
                                  foregroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.black),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColors.colorWhite)),
                              onPressed: () {},
                              child: const Text(
                                'Learn More',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
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
          SizedBox(height: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhyChooseUsCardWidget(screenWidth: screenWidth, index: 3),
                const SizedBox(height: 28),
                WhyChooseUsCardWidget(screenWidth: screenWidth, index: 4),
                const SizedBox(height: 28),
                WhyChooseUsCardWidget(screenWidth: screenWidth, index: 5)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
