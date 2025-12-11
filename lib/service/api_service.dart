import 'package:dio/dio.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class ApiService {
  Dio dio = new Dio();

  ApiService() {
    dio.options.baseUrl = ServerConstants.baseUrl;
  }

  // get
  Future<dynamic> getCall(String url) async {
    try {
      final response = await dio.get(url);
      return response;
    } catch (e) {
      return e;
    }
  }

  // post

  Future<dynamic> postCall(String path, dynamic data) async {
    try {
      final response = await dio.post(path, data: data);
      return response;
    } catch (e) {
      return e;
    }
  }

  // put
  Future<dynamic> putCall(String path, dynamic data) async {
    try {
      final response = await dio.put(path, data: data);
      return response;
    } catch (e) {
      return e;
    }
  }

  // delete
  Future<dynamic> deleteCall(String path) async {
    try {
      final response = await dio.put(path);
      return response;
    } catch (e) {
      return e;
    }
  }
}
