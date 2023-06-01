import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';

import 'feature_card.dart';

class DesktopRightColWidget extends StatelessWidget {
  const DesktopRightColWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeatureCard(
          heading: AppList.aboutFeatureList.elementAt(0)['heading'],
          description: AppList.aboutFeatureList.elementAt(0)['description'],
          iconData: AppList.aboutFeatureList.elementAt(0)['cardIcon'],
        ),
        const SizedBox(height: 50),
        FeatureCard(
          heading: AppList.aboutFeatureList.elementAt(1)['heading'],
          description: AppList.aboutFeatureList.elementAt(1)['description'],
          iconData: AppList.aboutFeatureList.elementAt(1)['cardIcon'],
        ),
        const SizedBox(height: 50),
        FeatureCard(
          heading: AppList.aboutFeatureList.elementAt(2)['heading'],
          description: AppList.aboutFeatureList.elementAt(2)['description'],
          iconData: AppList.aboutFeatureList.elementAt(2)['cardIcon'],
        )
      ],
    );
  }
}
