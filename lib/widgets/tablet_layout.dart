import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/finance_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/medium_section.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
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
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: MobileLayout(),
          ),
        ),
        SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
