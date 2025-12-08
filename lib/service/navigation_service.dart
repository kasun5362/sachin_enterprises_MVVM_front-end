import 'package:sachin_enterprises/routes/routes.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;
  NavigationService._internal();

  // push
  void navigateTo(String route) {
    AppRoutes.router.push(route);
  }

  // pop
  void goBack() {
    AppRoutes.router.pop();
  }

  // push and Replace
  void navigateWithReplace(String route) {
    AppRoutes.router.pushReplacement(route);
  }

  // push with parameters
  void navigateWithParameters(String route, Map<String, dynamic> params) {
    AppRoutes.router.push(route, extra: params);
  }
}
