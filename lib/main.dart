import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/features/category/repository/category_repository_impl.dart';
import 'package:sachin_enterprises/features/category/view_model/category_view_model.dart';
import 'package:sachin_enterprises/features/product/repository/product_repository_impl.dart';
import 'package:sachin_enterprises/features/product/view_model/product_view_model.dart';
import 'package:sachin_enterprises/routes/routes.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              ProductViewModel(productRepository: ProductRepositoryImpl()),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              CategoryViewModel(categoryRepository: CategoryRepositoryImpl()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        builder: EasyLoading.init(),
      ),
    );
  }
}
