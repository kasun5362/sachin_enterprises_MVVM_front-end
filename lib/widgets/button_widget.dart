import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final Color? bgColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? borderRadius;

  const ButtonWidget({
    super.key,
    this.title,
    this.onPressed,
    this.bgColor,
    this.textColor,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Colors.blue, // Background color
          foregroundColor: textColor ?? Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 5,
            ), // Border radius
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ), // Optional: button size
        ),
        child: Text(title ?? 'Click Me', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
