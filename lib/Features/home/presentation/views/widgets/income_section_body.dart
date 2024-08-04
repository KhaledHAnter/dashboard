import 'package:dashboard/Core/utils/size_config.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/detailed_income_chart.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_chart.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width <= 1720 && width >= SizeConfig.desktop
        ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
