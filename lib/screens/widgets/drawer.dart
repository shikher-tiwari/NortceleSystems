import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppImage.companyLogo,
                    height: 40,
                    width: 150,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColors.colorPrimary,
              size: 30,
            ),
            title: Text(
              'HOME',
              style: const TextStyle(
                  fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_max,
              color: AppColors.colorPrimary,
              size: 30,
            ),
            title: Text(
              'ABOUT',
              style: const TextStyle(
                  fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.design_services,
              color: AppColors.colorPrimary,
              size: 30,
            ),
            title: Text(
              'SERVICES',
              style: const TextStyle(
                  fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_phone,
              color: AppColors.colorPrimary,
              size: 30,
            ),
            title: Text(
              'CONTACT',
              style: const TextStyle(
                  fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: AppColors.colorPrimary,
              size: 30,
            ),
            title: Text(
              'EXIT',
              style: const TextStyle(
                  fontFamily: 'Barlow', color: Colors.black, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
