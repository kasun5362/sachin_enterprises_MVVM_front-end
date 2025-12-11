import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sachin_enterprises/routes/route_constants.dart';
import 'package:sachin_enterprises/service/navigation_service.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/text_constants.dart';
import 'package:sachin_enterprises/widgets/button_widget.dart';
import 'package:sachin_enterprises/widgets/input_text_feild.dart';
import 'package:sachin_enterprises/widgets/input_text_feild_widget.dart';
import 'package:sachin_enterprises/widgets/logo_widget.dart';
import 'package:sachin_enterprises/widgets/primary_color_text.dart';
import 'package:sachin_enterprises/widgets/subtitle_text.dart';
import 'package:sachin_enterprises/widgets/title_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  LogoWidget(width: 200, height: 200),
                  SizedBox(height: 10),
                  Text("Welcome Back!", style: AppTextStyles.heading1),
                  SizedBox(height: 10),
                  Text(
                    "Login to your account to continue",
                    style: AppTextStyles.subtitle2,
                  ),
                  SizedBox(height: 20),
                  InputTextFeildWidget(
                    hintText: "Email",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.email),
                  ),
                  SizedBox(height: 10),
                  InputTextFeildWidget(
                    hintText: "Password",
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscure,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: AppTextStyles.bodySmallHighlight,
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  ButtonWidget(
                    title: 'Get Started',
                    bgColor: ColorConstants.primaryColor,
                    onPressed: () {
                      NavigationService().navigateTo(RouteConstants.home);
                    },
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: AppTextStyles.bodySmall,
                      ),
                      GestureDetector(
                        onTap: () {
                          NavigationService().navigateTo(RouteConstants.signup);
                        },
                        child: Text(
                          "Sign Up",
                          style: AppTextStyles.bodySmallHighlight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
