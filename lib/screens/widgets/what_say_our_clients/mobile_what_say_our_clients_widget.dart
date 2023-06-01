import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';

import 'carousel_slider_widget.dart';

Widget mobileWhatSayOurClient(double screenWidth) {
  return SizedBox(
    height: 1300,
    width: double.infinity,
    child: Column(children: [
      Expanded(
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.colorSecondary,
              image: DecorationImage(
                  image: AssetImage(
                    (AppImage.testimonialImg),
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: screenWidth / 30),
              child: const AutoSizeText(
                maxLines: 1,
                'What Say Our Client !!!',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ),
            ),
            CustomCarouselSlider(),
            // buildIndicator(),
            Container(
              margin: EdgeInsets.only(left: screenWidth / 30),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.colorPrimary),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.colorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.colorPrimary),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]),
  );
}
