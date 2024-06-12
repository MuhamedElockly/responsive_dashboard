import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}

