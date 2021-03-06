import 'dart:convert';

import 'package:flutter/material.dart';
import '../ProgressHUD.dart';
import 'package:flutter_http_post_request/model/double_chart.dart';
import 'package:flutter_http_post_request/model/report_summary_model.dart';
import 'package:flutter_http_post_request/api/api_repost_summary.dart';

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
  APIServiceReport apiServiceReport = new APIServiceReport();

  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
        future: apiServiceReport.reportSummary(reportSummaryRequestModel),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          Widget result = Container();
          if (snapshot.hasData) {
            int total_price1 = int.parse(
                snapshot.data['data']['billing_summary'][0]['total_price']);
            int total_price2 = int.parse(
                snapshot.data['data']['billing_summary'][1]['total_price']);
            int total_bill1 = int.parse(snapshot.data['data']['billing_summary']
                    [0]['total_bill']
                .toString());
            int total_bill2 = int.parse(snapshot.data['data']['billing_summary']
                    [1]['total_bill']
                .toString());
            int total_bill = total_bill1 + total_bill2;
            int sum = total_price1 + total_price2;
            String sumTotal;
            String sumBill = total_bill.toString();
            String totalBill1 = total_bill1.toString();
            String totalBill2 = total_bill2.toString();
            sumTotal = sum.toString();
            DateTime selectedDate = DateTime.now();
            result = Scaffold(
              appBar: AppBar(
                title: new Text('Doanh thu t???ng quan'),
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
            body: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(200),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 30,
                        child: Text(
                          'Loa??i',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          height: 30,
                          width: 15,
                          child: Text(
                            'Giao d???ch',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Text(
                          'T???ng S??? Ti???n Thu ???????c',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 200,
                        child: Text(
                          'T???ng',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Center(
                          child: test(sumBill),
                        ),
                      ),
                      Center(
                        child: test(sumTotal),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 20,
                        child: Text(
                          'D??ng T???i B??n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Center(
                          child: test(totalBill1),
                        ),
                      ),
                      Center(
                        child: test(snapshot.data['data']['billing_summary'][0]
                            ['total_price']),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 20,
                        child: Text(
                          'Mang ??i',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Center(
                          child: test(totalBill2),
                        ),
                      ),
                      Center(
                        child: test(snapshot.data['data']['billing_summary'][1]
                            ['total_price']),
                      ),
                    ],
                  ),
                ],
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
//         title: new Text('Doanh thu t???ng quan'),
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
//                            Text('Loa??i'),
//                            Text('T????ng'),
//                            Text('Du??ng ta??i ba??n'),
//                            Text('Mang ??i'),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Text('Giao di??ch'),
//                            Text(value.totalPrice.toString()),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Text('T????ng S???? ti????n thu ????????c'),
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
