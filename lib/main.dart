import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'pages/login_page.dart';
import 'reports/date.dart';
import 'dart:async';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'reports/report_summary.dart';
import 'package:flutter_http_post_request/pages/report_page.dart';
import 'package:flutter_http_post_request/model/horizontal_double_chart.dart';
import 'package:flutter_http_post_request/model/double_chart.dart';
import 'package:flutter_http_post_request/pages/report_page.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_http_post_request/model/line_chart.dart';
void main() {
   runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final storage = new FlutterSecureStorage();
  final _key = "token";


  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales('Phạm Chí Cường', 10000000),
      new OrdinalSales('Danh', 750000),

    ];

    final losAngelesSalesData = [
      new OrdinalSales('Phạm Chí Cường', 25),
      new OrdinalSales('Danh', 50),

    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Los Angeles Revenue',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: losAngelesSalesData,
      )..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId)
      // Set the 'Los Angeles Revenue' series to use the secondary measure axis.
      // All series that have this set will use the secondary measure axis.
      // All other series will use the primary measure axis.
    ];
  }

  @override
  Widget build(BuildContext context) {
    //read();
    return new MaterialApp(
      title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.redAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      //home:BarChartSample2(),
//      home:HorizontalBarChartWithSecondaryAxis(
//        _createSampleData(),
//      // Disable animations for image tests.
//        animate: false,
//      ),
      //home: LineChartSample2(),
        //home:BarChartDemo(),
        //home: ReportSummary(),
      home: LoginPage(),
      //home: DatePickerDemo(),
     //home: ReportSummary(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'EN'),
        const Locale('vi', 'VI'),
        const Locale('fr', 'FR')
      ],

    );
  }
}


//class MyApp extends StatelessWidget {
//  final storage = new FlutterSecureStorage();
//  final _key = "token";
//
//  Future read() async {
//    String tk = await storage.read(key: _key);
//    print("Here1: " + tk);
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    return ;
//  }
//}
