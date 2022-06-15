import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pie_chart/pie_chart.dart';



class More_Watched_Movies extends StatelessWidget {
  More_Watched_Movies({Key? key}) : super(key: key);
  Map<String, double> dataMap = {
    "Spider-Man: No Way Home ": 1849954 ,
    " Fast and Furious 9":  959767 ,
    "Venom: Let There Be Carnage": 668752,
    "Dune": 610601,
    "Eternals": 379265,
    "Black Widow": 331715
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PieChart(
        colorList: [Colors.blue,Colors.red,Colors.purple,Colors.brown,Colors.green,Colors.grey],
        dataMap: dataMap,
        animationDuration: const Duration(seconds: 3),
        chartLegendSpacing: 32,
        chartRadius: MediaQuery.of(context).size.width / 1.85,
        initialAngleInDegree: 0,
        chartType: ChartType.ring,
        ringStrokeWidth: 40,
        centerText: "Movies",
        legendOptions: const LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.bottom,
          showLegends: true,
          legendTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: const ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
          decimalPlaces: 1,
        ),),
    );
  }
}
