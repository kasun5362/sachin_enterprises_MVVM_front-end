import 'package:sachin_enterprises/features/product/repository/product_repository.dart';
import 'package:sachin_enterprises/service/api_service.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ApiService apiService = ApiService();

  @override
  Future<dynamic> fetchAllProducts() {
    final response = apiService.getCall(ServerConstants.getProductUrl);
    return response;
  }
}
