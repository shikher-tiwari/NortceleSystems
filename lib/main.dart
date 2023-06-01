import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nortcele - Raising The Bar',
      theme: ThemeData(
          fontFamily: 'Barlow',
          brightness: Brightness.light,
          primaryColor: AppColors.colorPrimary),
      home: const HomePage(),
    );
  }
}
