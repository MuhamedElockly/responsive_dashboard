
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoceHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}