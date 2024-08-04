import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_container.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_section.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/my_card_and_trans_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesQuickInvoiceSection(),
            Gap(24),
            CustomContainer(child: MyCardAndTransactionSection()),
            Gap(24),
            CustomContainer(child: IncomeSection()),
          ],
        ),
      ),
    );
  }
}
