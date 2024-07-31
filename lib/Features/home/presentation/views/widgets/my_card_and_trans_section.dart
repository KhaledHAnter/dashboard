import 'package:dashboard/Features/home/presentation/views/widgets/my_card_section.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardsSection(),
        Divider(height: 40, color: Color(0XFFF1F1F1)),
        TransctionHistorySection()
      ],
    );
  }
}
