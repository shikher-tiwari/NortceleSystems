import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    super.key,
    required this.heading,
    required this.description,
    required this.iconData,
  });
  final String heading;
  final String description;
  final Widget iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: iconData,
        ),
        const SizedBox(width: 18),
        Expanded(
          child: SizedBox(
            width: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                      fontFamily: 'Barlow',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.colorDark),
                ),
                const SizedBox(height: 8),
                Text(
                  textAlign: TextAlign.justify,
                  description,
                  style: const TextStyle(
                      fontFamily: 'Open-Sans',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
