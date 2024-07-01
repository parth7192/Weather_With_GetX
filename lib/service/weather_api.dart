import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_with_getx/modal/weather_city.dart';
import 'package:weather_with_getx/modal/weather_lat_long.dart';

class WeatherApi {
  WeatherApi._();
  static final WeatherApi weatherApi = WeatherApi._();

  String ApiLink1 =
      "https://api.openweathermap.org/geo/1.0/direct?q=surat&limit=5&appid=f0f5f2cae58dc0f475c97c03af3d15f4";
  String ApiLink2 =
      "https://api.openweathermap.org/data/2.5/weather?lat=21.2094892&lon=72.8317058&appid=f0f5f2cae58dc0f475c97c03af3d15f4";

  Future<List<WeatherLatLong>> getApi1() async {
    List<WeatherLatLong> weather = [];

    http.Response response = await http.get(
      Uri.parse("ApiLink1"),
    );
    if (response.statusCode == 200) {
      List Data = jsonDecode(response.body);
      Data.map(
        (e) => WeatherLatLong.fromJson(e),
      ).toList();
    }
    return weather;
  }

  Future<List<WeatherCity>>  getApi2() async {
    List<WeatherCity> weather1 = [];

    http.Response response = await http.get(
      Uri.parse("ApiLink2"),
    );
    if (response.statusCode == 200) {
      List Data = jsonDecode(response.body);
      Data.map(
        (e) => WeatherCity.fromJson(e),
      ).toList();
    }
    return weather1;
  }
}
