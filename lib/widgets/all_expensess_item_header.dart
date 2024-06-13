import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  final String image;

  const AllExpensessItemHeader({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration:
              ShapeDecoration(color: Color(0xFFFAFAFA), shape: OvalBorder()),
          child: SvgPicture.asset(image),
        )
      ],
    );
  }
}
