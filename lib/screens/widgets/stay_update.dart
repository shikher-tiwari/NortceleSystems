import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StayUpdate extends StatefulWidget {
  const StayUpdate({super.key});

  @override
  State<StayUpdate> createState() => _StayUpdateState();
}

class _StayUpdateState extends State<StayUpdate> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileStayUpdate(),
      tablet: (BuildContext context) => tabletStayUpdate(),
      desktop: (BuildContext context) => desktopStayUpdate(),
    );
  }

  Widget desktopStayUpdate() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: AppColors.colorPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Stay Update !!!',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        width: screenWidth * 0.50,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Your Email',
                              filled: true,
                              fillColor: AppColors.colorWhite),
                        )),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: screenWidth * 0.10,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.colorDark),
                            onPressed: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.colorWhite),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget tabletStayUpdate() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: AppColors.colorPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Stay Update !!!',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        width: screenWidth * 0.60,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Your Email',
                              filled: true,
                              fillColor: AppColors.colorWhite),
                        )),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: screenWidth * 0.20,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.colorDark),
                            onPressed: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.colorWhite),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget mobileStayUpdate() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: AppColors.colorPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Stay Update !!!',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                        width: screenWidth * 0.90,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Your Email',
                              filled: true,
                              fillColor: AppColors.colorWhite),
                        )),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        width: screenWidth * 0.30,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.colorDark),
                            onPressed: () {},
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.colorWhite),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
