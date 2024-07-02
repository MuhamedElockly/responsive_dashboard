import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> scafKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              leading: GestureDetector(
                  onTap: () {
                    scafKey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.menu)),
              backgroundColor: Color(0xffFAFAFA),
            )
          : null,
      backgroundColor: Color(0xFFF7F9F8),
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
