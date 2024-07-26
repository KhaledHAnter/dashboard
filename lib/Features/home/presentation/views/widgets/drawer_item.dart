import 'package:dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/active_inactive_items.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, this.isActive = false});

  final DrawerItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}
