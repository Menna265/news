import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_c9/model/NewsResponse.dart';
import 'package:news_c9/model/SourceResponse.dart';

import 'api_constants.dart';

class ApiManager {
  static Future<SourceResponse> getSources(String categoryId) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {'apiKey': 'efd5b35a90784b42a04cc44df97df821',
        'category':categoryId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.newApi,
        {'apiKey': 'efd5b35a90784b42a04cc44df97df821',
          'sources': sourceId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
