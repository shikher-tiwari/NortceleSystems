import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class WhyChooseUsCardWidget extends StatelessWidget {
  const WhyChooseUsCardWidget({
    super.key,
    required this.screenWidth,
    required this.index,
  });

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth > 950 ? screenWidth / 3.5 : screenWidth * 0.90,
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.colorPrimary),
            child: AppList.whyChooseUs.elementAt(index)['cardIcon'],
          ),
          const SizedBox(height: 18.0),
          AutoSizeText(
            maxLines: 1,
            "${AppList.whyChooseUs.elementAt(index)['title']}",
            style: const TextStyle(
                fontFamily: 'Barlow',
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: AppColors.colorDark),
          ),
          const SizedBox(height: 8),
          AutoSizeText(
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            "${AppList.whyChooseUs.elementAt(index)['bodyText']}",
            style: const TextStyle(
                fontFamily: 'Open-Sans',
                fontWeight: FontWeight.normal,
                fontSize: 16,
                height: 1.5,
                color: AppColors.colorGreyShade1),
          )
        ],
      ),
    );
  }
}
