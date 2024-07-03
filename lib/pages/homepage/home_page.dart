import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_with_getx/controller/theme_controller.dart';
import 'package:weather_with_getx/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    WeatherController weatherController = Get.put(WeatherController());
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      body: ListView.builder(itemBuilder: (context , index){
        return Obx(
                () => IconButton(
              onPressed: () {
                themeController.ChangeTheme();
                themeController.isdark.value
                    ? Get.changeTheme(ThemeData.dark())
                    : Get.changeTheme(ThemeData.light());
              },
              icon: Icon(
                themeController.isdark.value
                    ? Icons.sunny
                    : CupertinoIcons.moon_fill,
              ),
            ),
          );
      }),
    );
  }
}
