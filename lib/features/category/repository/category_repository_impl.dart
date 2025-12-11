import 'package:sachin_enterprises/features/category/repository/category_repository.dart';
import 'package:sachin_enterprises/service/api_service.dart';
import 'package:sachin_enterprises/utils/server_constants.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final ApiService apiService = ApiService();

  @override
  Future<dynamic> fetchCategories() {
    final response = apiService.getCall(ServerConstants.getCategoryUrl);
    return response;
  }
}
