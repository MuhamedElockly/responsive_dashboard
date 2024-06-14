import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  final String image;
  final Color? imageColor, imageBackground;
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageColor, this.imageBackground});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? Colors.white,
            shape: OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
          )),
        ),
        Expanded(child: SizedBox()),
        RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
