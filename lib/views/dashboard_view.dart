import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              leading: GestureDetector(onTap: () {}, child: Icon(Icons.menu)),
              backgroundColor: Color(0xffFAFAFA),
            )
          : null,
      backgroundColor: Color(0xFFF7F9F8),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
