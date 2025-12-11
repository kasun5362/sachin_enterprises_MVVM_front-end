import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sachin_enterprises/features/category/model/category_model.dart';
import 'package:sachin_enterprises/features/category/repository/category_repository.dart';
import 'package:sachin_enterprises/features/category/repository/category_repository_impl.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class CategoryViewModel extends ChangeNotifier {
  List<CategoryModelData> categories = [];
  CategoryRepository? categoryRepository;

  CategoryViewModel({required this.categoryRepository});

  Future<void> fetchCategories() async {
    try {
      final response = await categoryRepository!.fetchCategories();
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
