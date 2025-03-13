import 'package:flutter/material.dart';
import 'package:responsive_dashboard/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/layouts/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/layouts/desktop.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/responsive/adaptive_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: isMobile(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: isMobile(context) ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }

  bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < SizeConfig.tablet;
}
