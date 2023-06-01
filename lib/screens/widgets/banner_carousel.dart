import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1),
          items: AppList.carouselList
              .map(
                (item) => Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.srcOver),
                        image: AssetImage(item['imagePath']),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item['title'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        item['heading'],
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        // item['heading'].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth / 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 38),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: SizedBox(
                              height: screenWidth > 450 ? 58 : 35,
                              width: screenWidth > 450 ? 166 : 110,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty
                                        .all<StadiumBorder>(const StadiumBorder(
                                            side: BorderSide(
                                                color:
                                                    AppColors.colorPrimary))),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            AppColors.colorPrimary)),
                                onPressed: () {},
                                child: const Text(
                                  'Get Quote',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 18),
                          Flexible(
                            child: SizedBox(
                              height: screenWidth > 450 ? 58 : 35,
                              width: screenWidth > 450 ? 176 : 110,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty
                                        .all<StadiumBorder>(const StadiumBorder(
                                            side: BorderSide(
                                                color: AppColors.colorWhite))),
                                    foregroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.black),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            AppColors.colorWhite)),
                                onPressed: () {},
                                child: const Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ]),
              )
              .toList(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: screenWidth / 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: screenWidth / 30),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
