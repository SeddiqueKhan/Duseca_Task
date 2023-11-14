import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Your earnings', alignment: ChartAlignment.near, textStyle: TextStyle(color: Colors.grey)),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(majorGridLines: MajorGridLines(width: 0), axisLine: AxisLine(width: 0)),
      primaryYAxis: NumericAxis(isVisible: false),
      series: <ColumnSeries>[
        ColumnSeries<Data, String>(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          color: Colors.red.shade700,
          spacing: 1.5,
          dataSource: [
            Data('Sat', 50),
            Data('Sun', 40),
            Data('Mon', 25),
            Data('Tue', 20),
            Data('Wed', 45),
            Data('Thu', 25),
            Data('Fri', 60),
          ],
          xValueMapper: (Data data, _) => data.day,
          yValueMapper: (Data data, _) => data.value,
        )
      ],
    );
  }
}


class Data {
  final String day;
  final int value;

  Data(this.day, this.value);
}