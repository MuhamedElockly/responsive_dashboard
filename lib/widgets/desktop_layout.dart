import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/medium_section.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

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
          child: MediumSection(),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              MyCard(),
            ],
          ),
        ),
      ],
    );
  }
}
