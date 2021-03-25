import 'package:flutter/material.dart';

import 'package:flutter_http_post_request/chart/report_category_chart.dart';

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ReportCategoryTable extends StatefulWidget {
  @override
  _ReportCategoryTableState createState() => _ReportCategoryTableState();
}

class _ReportCategoryTableState extends State<ReportCategoryTable> {
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
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 15,
              child: Text(
                'Minh Loi',
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
                height: 15,
                width: 15,
                child: Text(
                  'Loi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 15,
              child: Text(
                'Minh',
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
              height: 15,
              child: Text(
                'Minh Loi',
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
                height: 15,
                width: 15,
                child: Text(
                  'Loi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 15,
              child: Text(
                'Minh',
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
              height: 15,
              child: Text(
                'Minh Loi',
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
                height: 15,
                width: 15,
                child: Text(
                  'Loi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 15,
              child: Text(
                'Minh',
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
              height: 15,
              child: Text(
                'Minh Loi',
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
                height: 15,
                width: 15,
                child: Text(
                  'Loi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 15,
              child: Text(
                'Minh',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ReportCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doanh thu theo danh mục"),
      ),
      body: Column(
        children: <Widget>[
          Text('Minhloi'),
          ReportCategoryTable(),
          Container(
            child: ReportChartPage(),
          ),
        ],
      ),
    );
  }
}
