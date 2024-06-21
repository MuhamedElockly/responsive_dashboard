import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IncomeChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xff208Bc7),
        ),
          PieChartSectionData(
          value: 25,
          color: Color(0xff4DB7F2),
        ),
          PieChartSectionData(
          value: 20,
          color: Color(0xff064060),
        ),
          PieChartSectionData(
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
