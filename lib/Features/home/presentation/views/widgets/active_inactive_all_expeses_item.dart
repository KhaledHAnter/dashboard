import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/data/models/all_expenses_item_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0XFFF1F1F1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AllExpensesItemHeader(
            image: item.image,
          ),
          const Gap(34),
          Text(
            item.title,
            style: Styles.styleSemiBold16,
          ),
          const Gap(8),
          Text(
            item.date,
            style: Styles.styleRegular14,
          ),
          const Gap(16),
          Text(
            item.price,
            style: Styles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.item,
    this.isActive = false,
  });

  final AllExpensesItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFF4EB7F2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AllExpensesItemHeader(
            image: item.image,
            isActive: isActive,
          ),
          const Gap(34),
          Text(
            item.title,
            style: Styles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            item.date,
            style:
                Styles.styleRegular14.copyWith(color: const Color(0XFFFAFAFA)),
          ),
          const Gap(16),
          Text(
            item.price,
            style: Styles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
