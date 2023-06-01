import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurTeamMembers extends StatefulWidget {
  const OurTeamMembers({super.key});

  @override
  State<OurTeamMembers> createState() => _OurTeamMembersState();
}

class _OurTeamMembersState extends State<OurTeamMembers> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileOurTeamMembers(),
      tablet: (BuildContext context) => tabletOurTeamMembers(),
      desktop: (BuildContext context) => desktopOurTeamMembers(),
    );
  }

  Widget desktopOurTeamMembers() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Our Team Members',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenWidth / 2,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team1Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team2Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team3Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget tabletOurTeamMembers() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Our Team Members',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenWidth / 2,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team1Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team2Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 5 / 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth / 50),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage((AppImage.team3Img)),
                            fit: BoxFit.cover)),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget mobileOurTeamMembers() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Our Team Members',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth / 10),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenWidth * 4,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage((AppImage.team1Img)),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage((AppImage.team2Img)),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage((AppImage.team3Img)),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
