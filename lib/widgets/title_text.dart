import 'package:flutter/material.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  String title = "Default Title";
  TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: ColorConstants.secondaryColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
