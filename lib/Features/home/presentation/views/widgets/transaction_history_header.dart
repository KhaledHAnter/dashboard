import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          "Transaction History",
          style: Styles.styleSemiBold20,
        ),
        const Spacer(),
        Text(
          "See all",
          style: Styles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
