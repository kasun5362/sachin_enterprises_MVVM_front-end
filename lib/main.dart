import 'package:flutter/material.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Image.asset(ImageConstants.logo),
            Text(
              "Welcome to Sachin Enterprises",
              style: TextStyle(color: ColorConstants.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
