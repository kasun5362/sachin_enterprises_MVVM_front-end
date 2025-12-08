import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/features/category/view_model/category_view_model.dart';
import 'package:sachin_enterprises/features/product/view_model/product_view_model.dart';
import 'package:sachin_enterprises/routes/routes.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductViewModel()),
        ChangeNotifierProvider(create: (context) => CategoryViewModel()),
      ],
      child: MaterialApp.router(routerConfig: AppRoutes.router),
    );
  }
}
