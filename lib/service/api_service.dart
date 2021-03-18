import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:providers/model/randomJson.dart';


class ApiService {
  List<RandomJson> randomJsonList = [];

  Future<List<RandomJson>> getApiDataFromRandomJson() async {
    try {
      var res = await http.get("https://jsonplaceholder.typicode.com/posts");
      var jsonResponse = convert.jsonDecode(res.body);
      print('--API HITTING ');
      var itemCount = jsonResponse;
      itemCount.forEach((e) {
        randomJsonList.add(RandomJson.fromJson(e));
      });
      return randomJsonList;
    } catch (e) {
      print('Error while calling api $e');
      return e;
    }
  }
}
