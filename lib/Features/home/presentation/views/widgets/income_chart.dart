import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          value: 40,
          color: const Color(0xFF208bc7),
          radius: touchedIndex == 0 ? 60 : 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xFF4db7f2),
          radius: touchedIndex == 1 ? 60 : 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xFF064060),
          radius: touchedIndex == 2 ? 60 : 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xFFe2decd),
          radius: touchedIndex == 3 ? 60 : 50,
          showTitle: false,
        ),
      ],
    );
  }
}
