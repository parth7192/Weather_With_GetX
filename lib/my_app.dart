import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_with_getx/pages/homepage/home_page.dart';
import 'package:weather_with_getx/pages/intropage/intro_page.dart';
import 'package:weather_with_getx/pages/splashscreen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "intro_page",
          page: () => const IntroPage(),
        ),
        GetPage(
          name: "/home_page",
          page: () => const HomePage(),
        ),

      ],
    );
  }
}
