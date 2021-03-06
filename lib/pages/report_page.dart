import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/api/api_service.dart';
import 'package:flutter_http_post_request/model/double_chart.dart';
import 'package:flutter_http_post_request/reports/report_summary.dart';
import '../ProgressHUD.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('Cafe Kaviet',textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24.0,
            color: Colors.red,
            fontWeight: FontWeight.bold),),),
      body: Center( child: Text('My Page')),
        drawer : Drawer (
          child: new SafeArea(
            top: false,
            bottom: false,
            minimum: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ListTile(
                    title: new Text(
                      'Báo Cáo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  OutlineButton(
                    child: Text('Doanh thu tổng quan'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReportSummary()),
                      );
                    },
                  ),
                  OutlineButton(
                    child: Text('Doanh thu theo nhân viên'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  OutlineButton(
                    child: Text('Doanh thu theo danh mục'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  OutlineButton(
                    child: Text('Mặt hàng bán chạy'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  OutlineButton(
                    child: Text('Mặt hàng tùy chỉnh'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                  OutlineButton(
                    child: Text('Lịch sử hóa đơn'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
