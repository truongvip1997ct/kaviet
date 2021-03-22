import 'package:flutter/material.dart';

import 'package:calendarro/calendarro.dart';
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

  //var now = DateTime.now();


  //var date = DateFormat("dd/MM/yyyy").format(DateTime.now());
  //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
  //String dateFormate = DateFormat("dd/MM/yyyy").format(DateTime.parse("12/01/2020"));
  //DateTime tempDate = new DateFormat("dd/MM/yyyy").parse("12/01/2020");
  //DateFormat("dd/MM/yyyy").format(DateTime.parse(selectedDate.toString()))
  //DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]
  @override
  Widget build(BuildContext context) {

    //DateTime tempDate = new DateFormat("dd/MM/yyyy hh:mm:ss").parse("12/01/2020 10:07:23");
    return Scaffold(

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
}