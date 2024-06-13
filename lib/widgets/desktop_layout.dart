import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpensess(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
