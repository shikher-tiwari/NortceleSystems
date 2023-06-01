import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/icon_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

class AppList {
  //========================= Carousel Section===================================
  static List<Map<String, dynamic>> carouselList = [
    {
      "id": "1",
      "imagePath": AppImage.carouselImage1,
      "title": AppText.carouselTitle1,
      "heading": AppText.carouselHeading1
    },
    {
      "id": "2",
      "imagePath": AppImage.carouselImage2,
      "title": "BUSINESS CONSULTANCY",
      "heading": AppText.carouselHeading2
    },
  ];

  //========================= About Section===================================

  static List<Map<String, dynamic>> aboutFeatureList = [
    {
      "cardIcon": const Icon(
        AppIcon.indianRupeeSign,
        size: 30,
        color: Colors.red,
      ),
      "heading": AppText.AboutFeature1,
      "description": AppText.AboutFeature1Desc,
    },
    {
      "cardIcon": const Icon(
        AppIcon.clock,
        size: 30,
        color: Colors.red,
      ),
      "heading": AppText.AboutFeature2,
      "description": AppText.AboutFeature2Desc,
    },
    {
      "cardIcon": const Icon(
        AppIcon.faceSmile,
        size: 30,
        color: Colors.red,
      ),
      "heading": AppText.AboutFeature3,
      "description": AppText.AboutFeature3Desc
    },
  ];

//========================= What We Offer Section===================================

  static List<Map<String, dynamic>> whatWeOfferList = [
    {
      "cardIcon": const Icon(AppIcon.globe, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer1,
      "bodyText": AppText.WhatWeOffer1Desc
    },
    {
      "cardIcon": const Icon(AppIcon.mobile, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer2,
      "bodyText": AppText.WhatWeOffer2Desc
    },
    {
      "cardIcon": const Icon(AppIcon.robot, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer3,
      "bodyText": AppText.WhatWeOffer3Desc
    },
    {
      "cardIcon": const Icon(AppIcon.microchip, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer4,
      "bodyText": AppText.WhatWeOffer4Desc
    },
    {
      "cardIcon": const Icon(AppIcon.laptopCode, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer5,
      "bodyText": AppText.WhatWeOffer5Desc
    },
    {
      "cardIcon":
          const Icon(AppIcon.personChalkboard, color: Colors.white, size: 30),
      "title": AppText.WhatWeOffer6,
      "bodyText": AppText.WhatWeOffer6Desc
    },
  ];

//========================= Why Choose Us Section===================================

  static List<Map<String, dynamic>> whyChooseUs = [
    {
      "cardIcon":
          const Icon(AppIcon.handPeace, color: AppColors.colorWhite, size: 30),
      "title": AppText.BestInIndustry,
      "bodyText": AppText.BestInIndustryQuote,
    },
    {
      "cardIcon":
          const Icon(AppIcon.star, color: AppColors.colorWhite, size: 30),
      "title": AppText.SuccessRate,
      "bodyText": AppText.SuccessRateQuote,
    },
    {
      "cardIcon":
          const Icon(AppIcon.trophy, color: AppColors.colorWhite, size: 30),
      "title": AppText.AwardWinning,
      "bodyText": AppText.AwardWinningQuote,
    },
    {
      "cardIcon":
          const Icon(AppIcon.faceSmile, color: AppColors.colorWhite, size: 30),
      "title": AppText.HappyClient,
      "bodyText": AppText.HappyClientQuote,
    },
    {
      "cardIcon":
          const Icon(AppIcon.userTie, color: AppColors.colorWhite, size: 30),
      "title": AppText.ProfessionalAdvisors,
      "bodyText": AppText.ProfessionalAdvisorsQuote,
    },
    {
      "cardIcon":
          const Icon(AppIcon.headphones, color: AppColors.colorWhite, size: 30),
      "title": AppText.CustomerSupport,
      "bodyText": AppText.CustomerSupportQuote,
    },
  ];

//========================= Testimonial Section================================

  static List<Map<String, dynamic>> testimonialList = [
    {
      "cardIcon": const Icon(
        AppIcon.quoteLeft,
        size: 30,
        color: Colors.red,
      ),
      "photo": AppImage.testimonial1Img,
      "name": AppText.testimonial1Author,
      "bodyText": AppText.testimonial1,
      "occupation": AppText.testimonial1AuthorPost,
    },
    {
      "cardIcon": const Icon(
        AppIcon.quoteLeft,
        size: 30,
        color: Colors.red,
      ),
      "photo": AppImage.testimonial2Img,
      "name": AppText.testimonial2Author,
      "bodyText": AppText.testimonial2,
      "occupation": AppText.testimonial2AuthorPost,
    },
    {
      "cardIcon": const Icon(
        AppIcon.quoteLeft,
        size: 30,
        color: Colors.red,
      ),
      "photo": AppImage.testimonial3Img,
      "name": AppText.testimonial3Author,
      "bodyText": AppText.testimonial3,
      "occupation": AppText.testimonial3AuthorPost,
    },
    {
      "cardIcon": const Icon(
        AppIcon.quoteLeft,
        size: 30,
        color: Colors.red,
      ),
      "photo": AppImage.testimonial4Img,
      "name": AppText.testimonial4Author,
      "bodyText": AppText.testimonial4,
      "occupation": AppText.testimonial4AuthorPost,
    },
  ];
}
