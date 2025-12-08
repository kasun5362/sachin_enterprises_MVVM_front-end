import 'package:flutter/material.dart';
import 'package:sachin_enterprises/routes/route_constants.dart';
import 'package:sachin_enterprises/service/navigation_service.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/widgets/button_widget.dart';
import 'package:sachin_enterprises/widgets/choose_image_button_widget.dart';
import 'package:sachin_enterprises/widgets/input_text_feild_widget.dart';
import 'package:sachin_enterprises/widgets/logo_widget.dart';
import 'package:sachin_enterprises/widgets/primary_color_text.dart';
import 'package:sachin_enterprises/widgets/subtitle_text.dart';
import 'package:sachin_enterprises/widgets/title_text.dart';

class SignupScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController nicController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LogoWidget(width: 200, height: 200),
                  SizedBox(height: 10),
                  TitleText(title: "Create Account"),
                  SizedBox(height: 10),
                  SubtitleText(subtitle: "Sign up to get started!"),
                  SizedBox(height: 10),

                  InputTextFeildWidget(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 10),

                  InputTextFeildWidget(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),

                  SizedBox(height: 10),

                  InputTextFeildWidget(
                    hintText: "First Name",
                    prefixIcon: Icon(Icons.person),
                    controller: firstnameController,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 10),
                  InputTextFeildWidget(
                    hintText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                    controller: lastnameController,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 10),
                  InputTextFeildWidget(
                    hintText: "NIC",
                    prefixIcon: Icon(Icons.credit_card),
                    controller: nicController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 10),
                  InputTextFeildWidget(
                    hintText: "Address",
                    prefixIcon: Icon(Icons.home),
                    controller: addressController,
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(height: 10),
                  InputTextFeildWidget(
                    hintText: "Contact Number",
                    prefixIcon: Icon(Icons.phone),
                    controller: contactController,
                    keyboardType: TextInputType.phone,
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ChooseImageButtonWidget(
                        buttonText: "Choose Profile Image",
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Upload face clear image")],
                    ),
                  ),

                  SizedBox(height: 30),

                  ButtonWidget(
                    title: "Sign Up with Email",
                    bgColor: ColorConstants.primaryColor,
                    onPressed: () {},
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account? "),
                      GestureDetector(
                        onTap: () {
                          NavigationService().navigateTo(RouteConstants.login);
                        },
                        child: PrimaryColorText(text: "Login"),
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
