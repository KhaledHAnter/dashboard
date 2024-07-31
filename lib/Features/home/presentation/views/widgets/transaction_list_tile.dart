import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/data/models/transaction_history_model.dart';
import 'package:flutter/material.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.transactionHistoryModel,
  });

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transactionHistoryModel.title, style: Styles.styleSemiBold16),
      subtitle: Text(
        transactionHistoryModel.subTitle,
        style: Styles.styleRegular16.copyWith(
          color: const Color(0XFFaaaaaa),
        ),
      ),
      trailing: Text(
        transactionHistoryModel.trailing,
        style: transactionHistoryModel.isIncome
            ? Styles.styleSemiBold20.copyWith(color: const Color(0xff7DD97B))
            : Styles.styleSemiBold20.copyWith(color: const Color(0xffF3735E)),
      ),
    );
  }
}
