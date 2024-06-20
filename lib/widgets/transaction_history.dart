import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Transactions History',
              style: AppStyles.styleSemiBold20(context),
            ),
            Expanded(child: SizedBox()),
            Text(
              'See all',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Color(0xff4EB7F2)),
            ),
          ],
        )
      ],
    );
  }
}
