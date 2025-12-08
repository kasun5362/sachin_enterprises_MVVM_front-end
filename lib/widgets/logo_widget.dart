import 'package:flutter/material.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';

class LogoWidget extends StatelessWidget {
  double? width = 200;
  double? height = 200;

  LogoWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageConstants.logo, width: width, height: height);
  }
}
