import 'package:dashboard/Features/home/presentation/views/widgets/icome_chart.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_details.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        IncomeHeader(),
        Gap(16),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
