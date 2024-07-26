import 'package:dashboard/Features/home/presentation/views/widgets/All_Expenses.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        // Gap(32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: AllExpenses(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
