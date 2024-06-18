import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
