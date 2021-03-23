import 'package:flutter/material.dart';
import '../ProgressHUD.dart';
import 'package:calendarro/calendarro.dart';
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
  ReportSummaryRequestModel reportSummaryRequestModel = new ReportSummaryRequestModel();


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
    print(reportSummaryRequestModel.endDate);
    return
      FutureBuilder<ReportSummaryResponsModel>(
        future: apiServiceReport.reportSummary(reportSummaryRequestModel),
        builder: (BuildContext context, AsyncSnapshot<ReportSummaryResponsModel> snapshot){
          Widget result = Container();
          if(snapshot.hasData){
            print(snapshot.data.success);
            result =  Scaffold(

                body: Center(

                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Loại'),
                            Text('Tổng'),
                            Text('Dùng tại bàn'),
                            Text('Mang đi'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Giao dịch'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Tổng Số tiền thu được'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            );
          }
          return result;
        }
    );
//    return Text("Ok");
    //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");


  }
}



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




