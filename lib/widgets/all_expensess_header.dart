import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  final String header;

  const AllExpensessHeader({super.key, required this.header});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: AppStyles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        AllExpensessRangeOptions(),
      ],
    );
  }
}
