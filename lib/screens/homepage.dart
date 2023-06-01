import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nortcele_web_app/screens/widgets/about/about_widget_tree.dart';
import 'package:nortcele_web_app/screens/widgets/drawer.dart';
import 'package:nortcele_web_app/screens/widgets/what_say_our_clients/what_say_our_client_widget_tree.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

import '../utils/size_constant.dart';
import 'widgets/banner_carousel.dart';
import 'widgets/copyright_footer/copyright_footer_widget_tree.dart';
import 'widgets/footer/footer_widget_tree.dart';
import 'widgets/navbar.dart';
import 'widgets/request_free_quote/request_free_quote_widget_tree.dart';
import 'widgets/stay_update.dart';
import 'widgets/topbar_widget.dart';
import 'widgets/what_we_offer/what_we_offer_widget_tree.dart';
import 'widgets/why_choose_us/why_choose_us_widget_tree.dart';

final ScrollController scrollController = ScrollController();
bool showTopbar = true;
bool showFloatingButton = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void listener() {
    double maxPosition = scrollController.position.maxScrollExtent;
    double currentPosition = scrollController.position.pixels;
    double difference = 10.0;

    if (currentPosition >= 100) {
      showTopbar = false;
    } else if (mounted) {
      setState(() {
        showTopbar = true;
      });
    }

    if (currentPosition >= 200) {
      showFloatingButton = true;
    } else if (mounted) {
      setState(() {
        showFloatingButton = false;
      });
    }

    /// bottom position
    if (maxPosition - currentPosition <= difference) {
    } else if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: showFloatingButton == true
          ? FloatingActionButton(
              onPressed: () {
                scrollController.animateTo(
                    scrollController.position.minScrollExtent,
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastOutSlowIn);
              },
              backgroundColor: AppColors.colorPrimary,
              child: const Icon(
                FontAwesomeIcons.arrowUp,
                color: AppColors.colorWhite,
                size: 20,
              ),
            )
          : null,
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                w! > 950 ? Container(height: 120) : Container(height: 50),
                BannerCarousel(),
                WelcomeSection(),
                WhatWeOffer(),
                WhyChooseUs(),
                RequestFreeQuote(),
                // OurTeamMembers(),
                WhatSayOurClient(),
                // BlogPosts(),
                StayUpdate(),
                Footer(),
                CopyrightFooter()
              ],
            ),
          ),
          Column(
            children: [
              if (showTopbar == true) const TopBar(),
              Navbar(
                showTopbar: showTopbar,
              ),
            ],
          )
        ],
      ),
    );
  }
}
