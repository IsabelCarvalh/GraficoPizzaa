import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Pie Chart Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PieChartSample(),
        ),
      ),
    );
  }
}

class PieChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.red,
            value: 30,
            title: '30%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.blue,
            value: 50,
            title: '20%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 5,
            title: '25%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.orange,
            value: 15,
            title: '25%',
            radius: 50,
          ),
        ],
        borderData: FlBorderData(
          show: false, // Desativa a borda
        ),
        centerSpaceRadius: 0, // Espaço central
        sectionsSpace: 0, // Espaço entre as seções
      ),
    );
  }
}
