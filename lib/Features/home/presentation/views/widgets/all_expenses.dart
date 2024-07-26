import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Features/home/data/models/all_expenses_item_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses_header.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses_item.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: <Widget>[
          const AllExpensesHeader(),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: index == 1
                        ? const EdgeInsets.symmetric(horizontal: 6)
                        : EdgeInsets.zero,
                    child: AllExpensesItem(
                      item: items[index],
                      isActive: selectedIndex == index,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
