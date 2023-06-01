import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/screens/widgets/common_widget/custom_text_form_field_widget.dart';
import 'package:nortcele_web_app/screens/widgets/common_widget/elevated_button_primary_widget.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';

String? selectedValue = 'IT consultancy';
final servicesList = ['IT consultancy', 'Financial consultancy'];

Widget mobileRequestFreeQuoteWidget(double screenWidth) {
  return SizedBox(
    height: 1200,
    width: double.infinity,
    child: Column(
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
                    'Request A Free Quote',
                    style: TextStyle(
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.bold,
                        fontSize: 45),
                  ),
                  const AutoSizeText(
                    maxLines: 8,
                    minFontSize: 16,
                    '\n\nKasd vero erat ea amet justo no stet, et elitr no dolore no elitr sea kasd et dolor diam tempor. Nonumy sed dolore no eirmod sit nonumy vero lorem amet stet diam at. Ea at lorem sed et, lorem et rebum ut eirmod gubergren, dolor ea duo diam justo dolor diam ipsum dolore stet stet elitr ut. Ipsum amet labore lorem lorem diam magna sea, eos sed dolore elitr.',
                    style: TextStyle(
                        fontFamily: 'Open-Sans',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        height: 1.5,
                        letterSpacing: 1.2,
                        color: AppColors.colorGreyShade1),
                  ),
                  const SizedBox(height: 18),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      const CustomTextFormField(labelText: 'FULL NAME'),
                      SizedBox(width: screenWidth / 80),
                      const CustomTextFormField(labelText: 'EMAIL ADDRESS'),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.colorGreyShade1)),
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                                labelText: 'SELECT SERVICE',
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none)),
                            icon: const Icon(Icons.arrow_drop_down),
                            value: selectedValue,
                            items: servicesList.map((e) {
                              return DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                            onChanged: (value) {
                              // setState(() {
                              //   selectedValue = value;
                              // });
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth / 80),
                      SizedBox(
                        height: 60,
                        // width: 250,
                        child: ElevatedButtonPrimaryWidget(
                          elevatedButtonLabel: AppText.RequestAFreeQuote,
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
          ),
        )
      ],
    ),
  );
}
