import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class BarChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 5
  ;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;


  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);
    final barGroup8 = makeGroupData(7, 10, 1.5);
    final barGroup9 = makeGroupData(8, 12, 3);
    final barGroup10 = makeGroupData(9, 5, 12);
    final barGroup11 = makeGroupData(10, 5, 12);
    final barGroup12 = makeGroupData(11, 16, 12);
    final barGroup13 = makeGroupData(12, 18, 5);
    final barGroup14 = makeGroupData(13, 20, 16);
    final barGroup15 = makeGroupData(14, 17, 6);
    final barGroup16 = makeGroupData(15, 19, 1.5);
    final barGroup17 = makeGroupData(16, 10, 1.5);
    final barGroup18 = makeGroupData(17, 10, 1.5);
    final barGroup19 = makeGroupData(18, 12, 3);
    final barGroup20 = makeGroupData(15, 19, 1.5);
    final barGroup21 = makeGroupData(16, 10, 1.5);
    final barGroup22 = makeGroupData(17, 10, 1.5);
    final barGroup23 = makeGroupData(18, 12, 3);
    final barGroup24 = makeGroupData(18, 12, 3);
    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9,
      barGroup10,
      barGroup11,
      barGroup12,
      barGroup13,
      barGroup14,
      barGroup15,
      barGroup16,
      barGroup17,
      barGroup18,
      barGroup19,
      barGroup20,
      barGroup21,
      barGroup22,
      barGroup23,
      barGroup24,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0xff2c4260),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  makeTransactionsIcon(),
                  const SizedBox(
                    width: 38,
                  ),
                  const Text(
                    'Doanh Thu Tổng Quan',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: BarChart(
                    BarChartData(
                      maxY: 20,
                      barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: Colors.grey,
                            getTooltipItem: (_a, _b, _c, _d) => null,
                          ),
                          touchCallback: (response) {
                            if (response.spot == null) {
                              setState(() {

                                showingBarGroups = List.of(rawBarGroups);
                              });
                              return;
                            }



                          }),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 10),
                          margin: 10,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return '0h';
                              case 1:
                                return '1h';
                              case 2:
                                return '2h';
                              case 3:
                                return '3h';
                              case 4:
                                return '4h';
                              case 5:
                                return '5h';
                              case 6:
                                return '6h';
                              case 7:
                                return '7h';
                              case 8:
                                return '8h';
                              case 9:
                                return '9h';
                              case 10:
                                return '10h';
                              case 11:
                                return '11h';
                              case 12:
                                return '12h';
                              case 13:
                                return '13h';
                              case 14:
                                return '14h';
                              case 15:
                                return '15h';
                              case 16:
                                return '16h';
                              case 17:
                                return '17h';
                              case 18:
                                return '18h';
                              case 19:
                                return '19h';
                              case 20:
                                return '20h';
                              case 21:
                                return '21h';
                              case 22:
                                return '22h';
                              case 23:
                                return '23h';
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 10),
                          margin: 32,
                          reservedSize: 20,
                          getTitles: (value) {
                            if (value == 0) {
                              return '200,000';
                            } else if (value == 3) {
                              return '400,000';
                            } else if (value == 6) {
                              return '600,000';
                            }else if (value == 9) {
                              return '800,000';
                            }else if (value == 12) {
                              return '1,000,000';
                            }else if (value == 15) {
                              return '1,200,000';
                            } else {
                              return '';
                            }
                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: showingBarGroups,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        y: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const double width = 4.5;
    const double space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}