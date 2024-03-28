import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/model.dart';

class ApiService {
  Dio dio = Dio();
  var endpoitns = 'https://meithee.in/hihres/api/position/open';
  Future<List<DataMOdel>> getData() async {
    final Response response = await dio.get(endpoitns);
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> responsedata = response.data;
        final Map<String, dynamic> data = responsedata['data'];
        final List<dynamic> dataList = data['data'];
        return dataList.map((e) => DataMOdel.fromjson(e)).toList();
      } else {
        throw Exception('failed');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
