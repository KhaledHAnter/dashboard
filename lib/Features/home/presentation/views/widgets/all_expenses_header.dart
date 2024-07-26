import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Text(
          "All Expenses",
          style: Styles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
