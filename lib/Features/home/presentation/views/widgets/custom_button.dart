import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, this.textColor, required this.title});

  final Color? backgroundColor, textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: backgroundColor ?? const Color(0XFF4EB7F2),
            elevation: 0,
            foregroundColor: Colors.white),
        onPressed: () {},
        child: Text(
          title,
          style:
              Styles.styleSemiBold18.copyWith(color: textColor ?? Colors.white),
        ));
  }
}
