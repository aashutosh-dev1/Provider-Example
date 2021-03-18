import 'package:flutter/material.dart';
import 'package:providers/model/randomJson.dart';
import 'package:providers/service/api_service.dart';

class FetchDataProvider with ChangeNotifier {
  List<RandomJson> randomJson = List();
  bool loading = false;
  ApiService apiService = ApiService();

  int index = 0;
  increaseIndex() {
    index++;
    notifyListeners();
  }

  decreaseIndex() {
    index--;
    if (index.isNegative) {
      index = 0;
    }
    notifyListeners();
  }

  getDataFromInternet() async {
    loading = true;
    randomJson = await apiService.getApiDataFromRandomJson();
    loading = false;
    notifyListeners();
  }
}
