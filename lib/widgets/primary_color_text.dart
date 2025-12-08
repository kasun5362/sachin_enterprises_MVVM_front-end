import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';

class PrimaryColorText extends StatelessWidget {
  String text;
  PrimaryColorText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.end,
      text,
      style: GoogleFonts.roboto(
        color: ColorConstants.primaryColor,
        fontSize: 16,
      ),
    );
  }
}
