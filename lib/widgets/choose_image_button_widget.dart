import 'package:flutter/material.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/text_constants.dart';

class ChooseImageButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String? buttonText;
  ChooseImageButtonWidget({
    super.key,
    this.onTap,
    this.buttonText = "Choose Image",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white.withOpacity(0.3),
      highlightColor: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 51, 54, 59),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt, size: 16, color: Colors.white),
            SizedBox(width: 5),
            Text(buttonText!, style: AppTextStyles.button),
          ],
        ),
      ),
    );
  }
}
