import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class IncomeItem extends StatelessWidget {
  final Color color;

  const IncomeItem({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        'Design Service',
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '40',
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
