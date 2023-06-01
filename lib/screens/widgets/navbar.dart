import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nortcele_web_app/screens/homepage.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key, required bool showTopbar});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNavebar(),
      tablet: (BuildContext context) => tabletNavebar(),
      desktop: (BuildContext context) => desktopNavbar(),
    );
  }

  Widget mobileNavebar() {
    return AppBar(
      title: SvgPicture.asset(
        AppImage.companyLogo,
        height: 40,
        width: 80,
      ),
      backgroundColor: AppColors.colorWhite,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  Widget tabletNavebar() {
    return AppBar(
      title: SvgPicture.asset(
        AppImage.companyLogo,
        height: 40,
        width: 80,
      ),
      backgroundColor: AppColors.colorWhite,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  Widget desktopNavbar() {
    return AnimatedContainer(
      color: AppColors.colorWhite,
      height: showTopbar == true ? 97 : 67,
      width: double.infinity,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            Row(
              children: [
                navButton('HOME'),
                navButton('ABOUT'),
                navButton('SERVICES'),
                navButton('CONTACT')
              ],
            ),
            // SizedBox(
            //   height: 45,
            //   child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
            // )
          ],
        ),
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
          )),
    );
  }

  Widget navLogo() {
    return SvgPicture.asset(
      AppImage.companyLogo,
      height: 50,
      width: 150,
    );
  }
}
