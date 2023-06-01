import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/app_list_constant.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

int activeIndex = 0;
final controller = CarouselController();

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  var screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
          viewportFraction: 1,
          // height: screenWidth * 0.70,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          aspectRatio: 1.5,
          onPageChanged: (index, reason) =>
              setState(() => activeIndex = index)),
      items: AppList.testimonialList.map((card) {
        return Builder(builder: (BuildContext context) {
          return Container(
            margin: const EdgeInsets.only(left: 35, right: 35),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: AppList.testimonialList
                                  .elementAt(activeIndex)['cardIcon'],
                              //cart+ icon from FontAwesome
                            ),
                            TextSpan(
                              text:
                                  "  ${AppList.testimonialList.elementAt(activeIndex)['bodyText']}",
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Open-Sans',
                                  height: 1.5,
                                  color: AppColors.colorDark),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              "${AppList.testimonialList.elementAt(activeIndex)['photo']}",
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "${AppList.testimonialList.elementAt(activeIndex)['name']}\n",
                                  style: const TextStyle(
                                      fontFamily: 'Barlow',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "${AppList.testimonialList.elementAt(activeIndex)['occupation']}",
                                  style: const TextStyle(
                                      fontFamily: 'Open-Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ), //SizedBox
          );
        });
      }).toList(),
    );
  }
}

Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: AppList.testimonialList.length,
      onDotClicked: animateToSlide,
      effect: const SlideEffect(
          dotWidth: 15,
          dotHeight: 15,
          activeDotColor: Colors.black87,
          dotColor: Colors.black12),
    );

void animateToSlide(int index) => controller.animateToPage(index);
