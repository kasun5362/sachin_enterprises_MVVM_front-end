import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sachin_enterprises/features/category/model/category_model.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class CategoryViewModel extends ChangeNotifier {
  List<CategoryModelData> categories = [];

  Future<void> fetchCategories() async {
    Dio dio = new Dio();

    final url = ServerConstants.baseUrl + ServerConstants.getCategoryUrl;
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        categories = data
            .map((json) => CategoryModelData.fromJson(json))
            .toList();
        notifyListeners();
      }

      categories.insert(0, CategoryModelData(name: "all"));
    } catch (e) {
      print('Error fetching categories: $e');
    }
  }
}
