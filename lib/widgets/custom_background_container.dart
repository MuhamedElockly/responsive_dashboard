
import 'package:flutter/material.dart';

class CustomBockgroundContainer extends StatelessWidget {
  CustomBockgroundContainer({super.key, this.padding, required this.child});
  Widget child;
  double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding ?? 20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child);
  }
}
