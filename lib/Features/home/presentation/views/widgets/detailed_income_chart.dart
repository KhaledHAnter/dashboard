import 'package:dashboard/Core/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (event, pieTouchResponse) {
            setState(() {
              touchedIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: touchedIndex == 0 ? 'Design service' : '40%',
          value: 40,
          color: const Color(0xFF208bc7),
          radius: touchedIndex == 0 ? 60 : 50,
          titleStyle: Styles.styleMedium16
              .copyWith(color: touchedIndex == 0 ? null : Colors.white),
          titlePositionPercentageOffset: touchedIndex == 0 ? -1 : null,
        ),
        PieChartSectionData(
          title: touchedIndex == 1 ? 'Design product' : '25%',
          value: 25,
          color: const Color(0xFF4db7f2),
          radius: touchedIndex == 1 ? 60 : 50,
          titleStyle: Styles.styleMedium16
              .copyWith(color: touchedIndex == 1 ? null : Colors.white),
          titlePositionPercentageOffset: touchedIndex == 1 ? -1 : null,
        ),
        PieChartSectionData(
          title: touchedIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          color: const Color(0xFF064060),
          radius: touchedIndex == 2 ? 60 : 50,
          titleStyle: Styles.styleMedium16
              .copyWith(color: touchedIndex == 2 ? null : Colors.white),
          titlePositionPercentageOffset: touchedIndex == 2 ? -1 : null,
        ),
        PieChartSectionData(
          title: touchedIndex == 3 ? 'Other' : '22%',
          value: 22,
          color: const Color(0xFFe2decd),
          radius: touchedIndex == 3 ? 60 : 50,
          titleStyle: Styles.styleMedium16
              .copyWith(color: touchedIndex == 3 ? null : Colors.white),
          titlePositionPercentageOffset: touchedIndex == 3 ? -1 : null,
        ),
      ],
    );
  }
}
