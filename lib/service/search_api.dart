import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:weather_with_getx/modal/search_modal.dart';

class SearchApi{
  SearchApi._();
  static final SearchApi searchApi = SearchApi._();

  String Api = "http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=c8933f911806cbe21cd4f700b00fc081";

  Future<List<Search>> getSearch({required city}) async {
    List<Search> allData = [];

    http.Response response = await http.get(Uri.parse('$Api&city=$city'));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['features'];
      allData = data.map((e) => Search.fromJson(e)).toList();
    }
    Logger().i(response.statusCode);

    return allData;
  }
}