import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

import 'feature_card.dart';

class MobileWelcomeLowerWidget extends StatelessWidget {
  const MobileWelcomeLowerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.colorPrimary,
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FeatureCard(
                  heading: AppList.aboutFeatureList.elementAt(0)['heading'],
                  description:
                      AppList.aboutFeatureList.elementAt(0)['description'],
                  iconData: AppList.aboutFeatureList.elementAt(0)['cardIcon'],
                ),
                const SizedBox(height: 50),
                FeatureCard(
                  heading: AppList.aboutFeatureList.elementAt(1)['heading'],
                  description:
                      AppList.aboutFeatureList.elementAt(1)['description'],
                  iconData: AppList.aboutFeatureList.elementAt(1)['cardIcon'],
                ),
                const SizedBox(height: 50),
                FeatureCard(
                  heading: AppList.aboutFeatureList.elementAt(2)['heading'],
                  description:
                      AppList.aboutFeatureList.elementAt(2)['description'],
                  iconData: AppList.aboutFeatureList.elementAt(2)['cardIcon'],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
