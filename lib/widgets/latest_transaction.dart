import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Latest Transaction',
      style: AppStyles.styleMedium16(context),
    );
  }
}
