import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:weather_with_getx/modal/search_modal.dart';
import 'package:weather_with_getx/service/search_api.dart';

class SearchCityController extends GetxController {
  RxList<Search> allSearch = <Search>[].obs;

  Future<void> initData([city = 'surat']) async {
    allSearch(await SearchApi.searchApi.getSearch(city: city));
    Logger().i("Api calling");
  }
}