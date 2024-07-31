import 'package:dashboard/Features/home/presentation/views/widgets/custom_container.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/latest_transactions.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/quick_invoice_form.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransactions(),
          Divider(
            height: 48,
            color: Color(0XFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
