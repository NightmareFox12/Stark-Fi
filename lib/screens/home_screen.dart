import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stark_fi/theme/stark_fi_theme.dart';
import 'package:stark_fi/wallet/modal_test.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: StarkFiTheme(context).primaryColor,
        ),
        body: Column(
          children: [
            Text("akakak"),
            ModalTest(),
            // BarChart(
            //   BarChartData(
            //     rotationQuarterTurns: 4,
            //     barGroups: [
            //       BarChartGroupData(
            //         x: 1,
            //         barsSpace: 10,
            //         groupVertically: true,
            //         barRods: [BarChartRodData(toY: 2)],
            //       ),

            //       BarChartGroupData(
            //         x: 2,
            //         barsSpace: 10,
            //         groupVertically: true,
            //         barRods: [BarChartRodData(toY: 2)],
            //       ),

            //       BarChartGroupData(
            //         x: 3,
            //         barsSpace: 10,
            //         groupVertically: true,
            //         barRods: [BarChartRodData(toY: 2)],
            //       ),
            //     ],
            //   ),
            //   duration: Duration(milliseconds: 150), // Optional
            //   curve: Curves.linear, // Optional
            // ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              tooltip: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms),
              label: "cafecito",
            ),
            BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.zoom_in),
              label: "cafecito",
            ),
          ],
        ),
      ),
    );
  }
}
