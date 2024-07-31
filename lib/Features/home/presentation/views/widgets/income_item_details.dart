import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/data/models/income_item_details_model.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.itemDetails,
  });

  final IncomeItemDetailsModel itemDetails;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: itemDetails.color),
      ),
      title: Text(
        itemDetails.title,
        style: Styles.styleRegular16,
      ),
      trailing: Text(itemDetails.percentage, style: Styles.styleMedium16),
    );
  }
}
