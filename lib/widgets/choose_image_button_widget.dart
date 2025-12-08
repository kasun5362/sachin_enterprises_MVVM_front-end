import 'package:flutter/material.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';

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
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 186, 187, 189),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt, size: 16, color: Colors.white),
              SizedBox(width: 5),
              Text(
                buttonText!,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
