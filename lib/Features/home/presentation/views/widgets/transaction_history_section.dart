import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/data/models/transaction_history_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/transaction_history_header.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransctionHistorySection extends StatelessWidget {
  const TransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const Gap(20),
        Text(
          "13 April 2022",
          style: Styles.styleMedium16.copyWith(color: const Color(0xffaaaaaa)),
        ),
        const Gap(16),
        Column(
          children: List.generate(
            3,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: TransactionListTile(
                  transactionHistoryModel: transactionHistoryList[index],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
