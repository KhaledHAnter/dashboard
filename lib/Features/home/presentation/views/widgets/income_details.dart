import 'package:dashboard/Features/home/data/models/income_item_details_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        incomeItems.length,
        (index) {
          return ItemDetails(itemDetails: incomeItems[index]);
        },
      ),
    );
  }
}
