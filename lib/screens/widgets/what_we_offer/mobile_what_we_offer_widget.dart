import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

Widget mobileWhatWeOfferWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 48),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            maxLines: 1,
            AppText.WhatWeOffer,
            style: TextStyle(
                fontFamily: 'Barlow',
                fontWeight: FontWeight.bold,
                fontSize: 45),
          )
        ],
      ),
      const SizedBox(height: 48),
      SizedBox(
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: AppList.whatWeOfferList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 300,
              height: 350,
              child: Card(
                elevation: 2,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                color: AppColors.colorSecondary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.colorPrimary),
                      child:
                          AppList.whatWeOfferList.elementAt(index)['cardIcon'],
                    ),
                    const SizedBox(height: 8.0),
                    AutoSizeText(
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      "${AppList.whatWeOfferList.elementAt(index)['title']}",
                      style: const TextStyle(
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: AppColors.colorDark),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                        "${AppList.whatWeOfferList.elementAt(index)['bodyText']}",
                        style: const TextStyle(
                            fontFamily: 'Open-Sans',
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            height: 1.5,
                            color: AppColors.colorGreyShade1),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      const SizedBox(height: 48),
    ],
  );
}
