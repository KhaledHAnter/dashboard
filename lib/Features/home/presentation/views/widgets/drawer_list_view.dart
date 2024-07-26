import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: "Dashboard",
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransaction,
      title: "My Transaction",
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: "Statistics",
    ),
    DrawerItemModel(
      image: Assets.imagesWallet,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investments",
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: DrawerItem(
              item: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
