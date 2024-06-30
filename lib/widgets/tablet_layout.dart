import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/medium_section.dart';

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
          child: MediumSection(),
        ),
        SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
