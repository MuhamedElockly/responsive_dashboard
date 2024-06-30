import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9F8),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
