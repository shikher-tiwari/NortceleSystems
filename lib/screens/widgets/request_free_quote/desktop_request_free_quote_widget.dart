import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/screens/widgets/common_widget/custom_dopdown_field_widget.dart';
import 'package:nortcele_web_app/screens/widgets/common_widget/custom_text_form_field_widget.dart';
import 'package:nortcele_web_app/screens/widgets/common_widget/elevated_button_primary_widget.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

Widget desktopRequestFreeQuoteWidget(double screenWidth) {
  return SizedBox(
    height: 600,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          child: Container(
            color: AppColors.colorSecondary,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    maxLines: 1,
                    AppText.RequestAFreeQuote,
                    style: TextStyle(
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.bold,
                        fontSize: 45),
                  ),
                  const AutoSizeText(
                    textAlign: TextAlign.justify,
                    maxLines: 15,
                    '\n${AppText.RequestAFreeQuotePara}',
                    style: TextStyle(
                        fontFamily: 'Open-Sans',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        height: 1.5,
                        letterSpacing: 1.2,
                        color: AppColors.colorGreyShade1),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: CustomTextFormField(labelText: 'FULL NAME'),
                      ),
                      SizedBox(width: screenWidth / 70),
                      const Expanded(
                        child: CustomTextFormField(labelText: 'EMAIL ADDRESS'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: CustomDropdownFieldWidget(
                        // globalKey: null,
                        selectedValue: 'IT SERVICES',
                        servicesList: ['IT SERVICES', 'CONSULTANCY'],
                      )),
                      SizedBox(width: screenWidth / 70),
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          width: 250,
                          child: ElevatedButtonPrimaryWidget(
                            elevatedButtonLabel: AppText.RequestAFreeQuote,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage((AppImage.quoteImg)), fit: BoxFit.cover)),
        ))
      ],
    ),
  );
}
