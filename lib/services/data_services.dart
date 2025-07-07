import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app3/model/data_model.dart';// Make sure to import your DataModel file

class DataServices {
  final String baseUrl = "http://mark.bslmeiyu.com/api";

  Future<List<DataModel>> getInfo() async {
    final String apiUrl = '/getplaces';
    final Uri url = Uri.parse(baseUrl + apiUrl);

    try {
      final http.Response res = await http.get(url);
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        print('Failed to load data: ${res.statusCode}');
        return <DataModel>[];
      }
    } catch (e) {
      print('Error: $e');
      return <DataModel>[];
    }
  }
}