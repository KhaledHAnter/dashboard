import 'package:dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashbordTabletLayout extends StatelessWidget {
  const DashbordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: DashboardMobileLayout()),
      ],
    );
  }
}
