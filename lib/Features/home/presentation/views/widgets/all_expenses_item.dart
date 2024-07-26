import 'package:dashboard/Features/home/data/models/all_expenses_item_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/active_inactive_all_expeses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, this.isActive = false, required this.item});

  final bool isActive;
  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(
            item: item,
            isActive: isActive,
          )
        : InActiveAllExpensesItem(item: item);
  }
}
