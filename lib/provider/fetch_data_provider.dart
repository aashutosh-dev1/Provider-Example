import 'package:flutter/material.dart';
import 'package:providers/model/randomJson.dart';
import 'package:providers/service/api_service.dart';

class FetchDataProvider with ChangeNotifier {
  List<RandomJson> randomJson = List();
  bool loading = false;
  ApiService apiService = ApiService();

  int index = 0;

  FetchDataProvider() {
    initialize();
    print('we have been initialized ');
  }

  Future<void> initialize() async {
    print('we have been called from ctr ');

    await getDataFromInternet();
  }

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
    print('we have been called from ctr -------2');

    loading = true;
    randomJson = await apiService.getApiDataFromRandomJson();
    loading = false;
    notifyListeners();
  }
}
