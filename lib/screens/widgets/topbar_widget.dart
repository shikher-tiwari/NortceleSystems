import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/text_constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/color_constant.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    super.key,
  });

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileTopbar(),
      tablet: (BuildContext context) => tabletTopbar(),
      desktop: (BuildContext context) => desktopTopbar(),
    );
  }

  Widget desktopTopbar() {
    return Container(
      color: AppColors.colorSecondary,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    AppText.faqs,
                    style: TextStyle(fontFamily: 'Open-Sans', fontSize: 16),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    AppText.support,
                    style: TextStyle(fontFamily: 'Open-Sans', fontSize: 16),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    AppText.privacyPolicy,
                    style: TextStyle(fontFamily: 'Open-Sans', fontSize: 16),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    AppText.career,
                    style: TextStyle(fontFamily: 'Open-Sans', fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              ClipPath(
                // clipper: ShapeClipper(),
                child: Container(
                  color: AppColors.colorPrimary,
                  width: 230,
                  height: 40,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.mail,
                          color: AppColors.colorWhite,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          AppText.CompanyEmail,
                          style: TextStyle(
                              fontFamily: 'Open-Sans',
                              fontSize: 16,
                              color: AppColors.colorWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalDivider(
                color: AppColors.colorSecondary,
                width: 1,
              ),
              Container(
                color: AppColors.colorPrimary,
                width: 230,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: AppColors.colorWhite),
                      SizedBox(width: 8.0),
                      Text(
                        AppText.CompanyContact,
                        style: TextStyle(
                            fontFamily: 'Open-Sans',
                            fontSize: 16,
                            color: AppColors.colorWhite),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                color: AppColors.colorSecondary,
                width: 1,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget tabletTopbar() {
    return Container();
  }

  Widget mobileTopbar() {
    return Container();
  }
}

class ShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(40, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // bool shouldReClip(CustomClipper<Path> oldClipper) => true;
    throw UnimplementedError();
  }
}
