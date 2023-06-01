import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/icon_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

import '../common_widget/circular_elevated_button_widget.dart';
import '../common_widget/text_button_widget.dart';

Widget mobileFooterWidget() {
  return Container(
    color: AppColors.colorDark,
    width: double.infinity,
    child: IntrinsicHeight(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.company,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.colorWhite),
                      ),
                      SizedBox(height: 20),
                      TextButtonWidget(labelText: AppText.whoWeAre),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.career),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.faqs),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.latestBlogPosts),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.termsNCondition),
                      SizedBox(height: 30),
                      Text(
                        AppText.services,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.colorWhite),
                      ),
                      SizedBox(height: 20),
                      TextButtonWidget(labelText: AppText.WhatWeOffer1),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.WhatWeOffer2),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.WhatWeOffer3),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.WhatWeOffer4),
                      SizedBox(height: 10),
                      TextButtonWidget(labelText: AppText.WhatWeOffer5),
                      SizedBox(height: 30),
                      Text(
                        AppText.getInTouch,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.colorWhite),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontFamily: 'Open-Sans',
                              height: 2,
                              fontSize: 16,
                              color: AppColors.colorWhite),
                          children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.location_pin,
                              color: AppColors.colorPrimary,
                            )),
                            TextSpan(text: '${AppText.CompanyAddress}\n'),
                            WidgetSpan(
                                child: Icon(
                              Icons.phone,
                              color: AppColors.colorPrimary,
                            )),
                            TextSpan(text: 'Phone : ${AppText.CompanyContact}\n'),
                            WidgetSpan(
                                child: Icon(
                              Icons.email,
                              color: AppColors.colorPrimary,
                            )),
                            TextSpan(text: 'Email : ${AppText.CompanyEmail}'),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        AppText.followUs,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.colorWhite),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CircularElevatedButtonWidget(
                              iconName: AppIcon.twitter),
                          SizedBox(width: 20),
                          CircularElevatedButtonWidget(
                              iconName: AppIcon.facebookF),
                          SizedBox(width: 20),
                          CircularElevatedButtonWidget(
                              iconName: AppIcon.linkedIn),
                          SizedBox(width: 20),
                          CircularElevatedButtonWidget(
                              iconName: AppIcon.instagram),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
