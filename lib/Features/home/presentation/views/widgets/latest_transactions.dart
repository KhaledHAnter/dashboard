import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/latest_transactions_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: Styles.styleMedium16,
        ),
        Gap(12),
        LatestTransactionsListView(),
      ],
    );
  }
}
