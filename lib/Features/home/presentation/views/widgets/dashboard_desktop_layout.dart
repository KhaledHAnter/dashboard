import 'package:dashboard/Features/home/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_container.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_section.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/my_card_and_trans_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 20,
          child: CustomDrawer(),
        ),
        // Gap(32),
        Expanded(
            flex: 80,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 52,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 32),
                          child: AllExpensesQuickInvoiceSection(),
                        ),
                      ),
                      Expanded(
                        flex: 28,
                        child: Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Column(
                            children: [
                              // Expanded(child: IncomeSection()),
                              CustomContainer(
                                child: MyCardAndTransactionSection(),
                              ),
                              Gap(24),
                              Expanded(
                                flex: 2,
                                child: CustomContainer(
                                  child: IncomeSection(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
