import 'package:dashboard/Core/utils/size_config.dart';
import 'package:dashboard/Core/widgets/adaptive_layout.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scafoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              backgroundColor: const Color(0xfffafafa),
              elevation: 0,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashbordTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
