import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'package:nortcele_web_app/utils/image_link_constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogPosts extends StatefulWidget {
  const BlogPosts({super.key});

  @override
  State<BlogPosts> createState() => _BlogPostsState();
}

class _BlogPostsState extends State<BlogPosts> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileBlogPosts(),
      tablet: (BuildContext context) => tabletBlogPosts(),
      desktop: (BuildContext context) => desktopBlogPosts(),
    );
  }

  Widget desktopBlogPosts() {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                'Latest Blog Posts',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenWidth / 2.8,
          width: double.infinity,
          child: const Row(
            children: [
              BlogCardWidget(),
              BlogCardWidget(),
              BlogCardWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabletBlogPosts() {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Latest Blog Posts',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              )
            ],
          ),
        ),
        IntrinsicHeight(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                BlogCardWidget(),
                BlogCardWidget(),
                BlogCardWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileBlogPosts() {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Latest Blog Posts',
                style: TextStyle(
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              )
            ],
          ),
        ),
        IntrinsicHeight(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                BlogCardWidget(),
                BlogCardWidget(),
                BlogCardWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BlogCardWidget extends StatelessWidget {
  const BlogCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            children: [
              Expanded(
                  child: AspectRatio(
                aspectRatio: 3 / 2,
                child: Image.asset(
                  AppImage.blogImg1,
                  fit: BoxFit.fitHeight,
                ),
              )),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      color: AppColors.colorPrimary,
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: [
                            TextSpan(
                                text: '01',
                                style: TextStyle(
                                    fontFamily: 'Barlow',
                                    fontSize: 20,
                                    color: AppColors.colorWhite)),
                            TextSpan(
                              text: '\nJAN',
                              style: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontSize: 20,
                                  color: AppColors.colorBlack,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text: '\n2023',
                              style: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontSize: 20,
                                  color: AppColors.colorWhite),
                            )
                          ])),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      color: AppColors.colorSecondary,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: RichText(
                            text: const TextSpan(children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.person_3_outlined,
                              size: 15,
                            ),
                          ),
                          TextSpan(
                              text: 'ADMIN\n',
                              style: TextStyle(
                                  fontFamily: 'Open-Sans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                  color: AppColors.colorBlack)),
                          TextSpan(
                            text: 'Magna sea dolor ipsum amet lorem eos',
                            style: TextStyle(
                                fontFamily: 'Barlow',
                                fontSize: 24,
                                color: AppColors.colorBlack,
                                fontWeight: FontWeight.w600),
                          ),
                        ])),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
