import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Income",
          style: Styles.styleSemiBold20,
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
