import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
