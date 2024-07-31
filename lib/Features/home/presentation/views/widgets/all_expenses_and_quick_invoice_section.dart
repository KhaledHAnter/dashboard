import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllExpensesQuickInvoiceSection extends StatelessWidget {
  const AllExpensesQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        AllExpenses(),
        Gap(24),
        QuickInvoice(),
      ],
    );
  }
}
