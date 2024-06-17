import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? backgroundTextColor;
  final String text;

  const CustomButton(
      {super.key, this.backgroundColor, this.backgroundTextColor, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor:
                backgroundColor ?? Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: backgroundTextColor ?? Color(0xFF4DB7F2),
            ),
          )),
    );
  }
}
