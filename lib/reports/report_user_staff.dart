import 'dart:convert';

import 'package:flutter/material.dart';
import '../ProgressHUD.dart';
import 'package:flutter_http_post_request/model/double_chart.dart';
import 'package:flutter_http_post_request/model/report_summary_model.dart';
import 'package:flutter_http_post_request/api/api_repost_summary.dart';
import 'package:flutter_http_post_request/api/api_imcome_user.dart';
class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ReportSummary extends StatefulWidget {
  @override
  _ReportSummaryState createState() => _ReportSummaryState();
}

class _ReportSummaryState extends State<ReportSummary> {
  Widget test(data) {
    return Text(data);
  }

  ReportSummaryRequestModel reportSummaryRequestModel =
  new ReportSummaryRequestModel();

  //var now = DateTime.now();

  //var date = DateFormat("dd/MM/yyyy").format(DateTime.now());
  //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
  //String dateFormate = DateFormat("dd/MM/yyyy").format(DateTime.parse("12/01/2020"));
  //DateTime tempDate = new DateFormat("dd/MM/yyyy").parse("12/01/2020");
  //DateFormat("dd/MM/yyyy").format(DateTime.parse(selectedDate.toString()))
  //DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]

//  @override
//  Widget build(BuildContext context) {
//    APIServiceReport apiServiceReport = new APIServiceReport();
//    return FutureBuilder<ReportSummaryResponsModel>(
//        future: apiServiceReport.reportSummary(test),
//        builder: null
//    );
//  }
  APIIncomeUser apiIncomeUser = new APIIncomeUser();

  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: apiIncomeUser.reportSummary(reportSummaryRequestModel),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          Widget result = Container();
          if (snapshot.hasData) {
            int total_price1 = int.parse(
                snapshot.data['data']['billing_summary'][0]['total_price']);
            int total_price2 = int.parse(
                snapshot.data['data']['billing_summary'][1]['total_price']);

            int sum = total_price1 + total_price2;
            String sumTotal;
            String totalPrice1 = total_price1.toString();
            String totalPrice2 = total_price2.toString();
            sumTotal = sum.toString();
            DateTime selectedDate = DateTime.now();
            result = Scaffold(
              appBar: AppBar(
                title: new Text('Doanh thu tổng quan'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.date_range),
                    iconSize: 40,
                    onPressed: () {
                      showDatePicker(
                          context: context,
                          locale: Locale("vi", "VI"),
                          initialDate: selectedDate,
                          firstDate: DateTime(2018),
                          lastDate: DateTime(2030),
                          builder: (BuildContext context, Widget child) {
                            return Theme(
                              data: ThemeData.dark(),
                              child: child,
                            );
                          });
                    },
                  ),
                ],
              ),
              body: Center(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tên nhân viên'),
                          Text('Tuấn Anh'),
                          Text('Tổng Số Tiền Thu được'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Tổng'),
                          test(''),
                          test(''),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Dùng Tại Bàn'),
                          test(''),
                          test(''),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Mang đi'),
                          test(''),
                          test(''),
                        ],
                      ),
                      BarChartSample2(),
                    ],
                  ),
                ),
              ),
            );
          }
          return result;
        });
  }
}

// class ReportTotalPage extends StatefulWidget {
//   @override
//   _ReportTotalState createState() => _ReportTotalState();
// }

// class _ReportTotalState extends State<ReportTotalPage> {
//   Widget build(BuildContext context) {
//     DateTime selectedDate = DateTime.now();
//     return Scaffold(
//       appBar: AppBar(
//         title: new Text('Doanh thu tổng quan'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.date_range),
//             iconSize: 40,
//             onPressed: () {
//               showDatePicker(
//                   context: context,
//                   locale: Locale("vi", "VI"),
//                   initialDate: selectedDate,
//                   firstDate: DateTime(2018),
//                   lastDate: DateTime(2030),
//                   builder: (BuildContext context, Widget child) {
//                     return Theme(
//                       data: ThemeData.dark(),
//                       child: child,
//                     );
//                   });
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: <Widget>[
//           Text('Deliver features faster'),
//           Text('Craft beautiful UIs'),

//           ),
//         ],
//       ),
//     );
//   }
// }

//      APIServiceReport apiServiceReport = new APIServiceReport();
//      apiServiceReport.reportSummary(ReportSummaryRequestModel()).then((value) {
//        print(value.success);
//        //
//        if (value != null) {
//          if (value.success) {
//            //write(value.token);
//            return Scaffold(
//
//                body: Center(
//                  child: Container(
//                    padding: EdgeInsets.all(30.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text('Loại'),
//                            Text('Tổng'),
//                            Text('Dùng tại bàn'),
//                            Text('Mang đi'),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Text('Giao dịch'),
//                            Text(value.totalPrice.toString()),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Text('Tổng Số tiền thu được'),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                )
//            );
//
//
//          }
//        }else{
//          return Text("OK1");
//        }
//      });

//DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
