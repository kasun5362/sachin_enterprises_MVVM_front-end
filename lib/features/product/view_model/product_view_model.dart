import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sachin_enterprises/features/product/model/product_model.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class ProductViewModel extends ChangeNotifier {
  final dio = Dio();
  List<ProductModelData> products = [];
  List<ProductModelData> serachProducts = [];
  List<ProductModelData> allProducts = [];

  Future<void> fetchProducts() async {
    final url = ServerConstants.baseUrl + ServerConstants.getProductUrl;
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;

        products =
            data.map((json) => ProductModelData.fromJson(json)).toList() ?? [];
        serachProducts = products;
        allProducts = products;
      } else {
        print('Failed to fetch products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      notifyListeners();
    }
  }

  void searchProducts(String productName) {
    if (productName.isEmpty) {
      serachProducts = allProducts;
    } else {
      serachProducts = allProducts
          .where(
            (product) =>
                product.name!.toLowerCase().contains(productName.toLowerCase()),
          )
          .toList();
    }
    notifyListeners();
  }

  void filterProductsByCategory(String categoryName) {
    if (categoryName == "all") {
      serachProducts = allProducts;
    } else {
      serachProducts = allProducts
          .where(
            (product) =>
                (product.category ?? "").toLowerCase() ==
                categoryName.toLowerCase(),
          )
          .toList();
    }
    notifyListeners();
  }
}
