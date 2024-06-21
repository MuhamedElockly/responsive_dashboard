import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IncomeChart extends StatefulWidget {
  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 40 : 30,
          showTitle: false,
          value: 40,
          color: Color(0xff208Bc7),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 40 : 30,
          showTitle: false,
          value: 25,
          color: Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 40 : 30,
          showTitle: false,
          value: 20,
          color: Color(0xff064060),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 40 : 30,
          showTitle: false,
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
