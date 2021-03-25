/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HorizontalBarChartWithSecondaryAxis extends StatelessWidget {
  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
  final List<charts.Series> seriesList;
  final bool animate;

  HorizontalBarChartWithSecondaryAxis(this.seriesList, {this.animate});

//  factory HorizontalBarChartWithSecondaryAxis.withSampleData() {
//    return new HorizontalBarChartWithSecondaryAxis(
//      _createSampleData(),
//      // Disable animations for image tests.
//      animate: false,
//    );
//  }


  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      vertical: false,
      // It is important when using both primary and secondary axes to choose
      // the same number of ticks for both sides to get the gridlines to line
      // up.
      primaryMeasureAxis: new charts.NumericAxisSpec(
          tickProviderSpec:
          new charts.BasicNumericTickProviderSpec(desiredTickCount: 3)),
      secondaryMeasureAxis: new charts.NumericAxisSpec(
          tickProviderSpec:
          new charts.BasicNumericTickProviderSpec(desiredTickCount: 3)),
    );
  }

}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}