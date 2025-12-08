import 'package:flutter/material.dart';
import 'package:sachin_enterprises/routes/route_constants.dart';
import 'package:sachin_enterprises/service/navigation_service.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/widgets/button_widget.dart';
import 'package:sachin_enterprises/widgets/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    NavigationService().navigateWithReplace(RouteConstants.login);
  }

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: LogoWidget()));
  }
}
