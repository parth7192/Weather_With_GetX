import 'package:get/get.dart';
import 'package:weather_with_getx/modal/weather_lat_long.dart';
import 'package:weather_with_getx/service/weather_api.dart';


class WeatherController extends GetxController{
  WeatherController(){
    initdata();
  }

  RxList<WeatherLatLong> w = <WeatherLatLong>[].obs;
  RxBool isLogin = true.obs;

  Future<void> initdata() async {
    w((await WeatherApi.weatherApi.getApi1()));
    isLogin(false);
  }
}