import 'package:dashboard/Features/home/presentation/views/widgets/custom_button.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                  title: "Customer Name", hint: 'Type customer name'),
            ),
            Gap(16),
            Expanded(
              child: TitleTextFeild(
                  title: "Customer Email", hint: 'Type customer email'),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(title: "Item name", hint: 'Type item name'),
            ),
            Gap(16),
            Expanded(
              child: TitleTextFeild(title: "Item mount", hint: 'USD'),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0XFF4EB7F2),
              ),
            ),
            Gap(24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
