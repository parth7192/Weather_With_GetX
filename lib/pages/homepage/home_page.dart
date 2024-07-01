import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_with_getx/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherController weatherController = WeatherController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      body: ListView.builder(itemBuilder: (context , index){
        return ListTile(
          title: Obx(
              (){
                return Text(weatherController.w[index].name.toString());
              }
          ),
        );
      }),
    );
  }
}
