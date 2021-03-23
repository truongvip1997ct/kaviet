import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/api/api_service.dart';
import 'package:flutter_http_post_request/reports/report_summary.dart';
import 'package:flutter_http_post_request/reports/report_category.dart';
import 'package:flutter_http_post_request/reports/report_top_product.dart';

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
      appBar: AppBar(
        title: new Text('Cafe KAVIET'),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: new SafeArea(
          // Important: Remove any padding from the ListView.
          top: false,
          bottom: false,
          minimum: const EdgeInsets.all(16.0),
          child: Column(
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
              ListTile(
                title: Text('Doanh thu tổng quan'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportSummary()),
                  );
                },
              ),
              ListTile(
                title: Text('Doanh thu theo nhân viên'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
              ListTile(
                title: Text('Doanh thu theo danh mục'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReportCategoryPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Mặt hàng bán chạy'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReportTopProductPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Mặt hàng tuỳ chỉnh'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
              ListTile(
                title: Text('Lịch sử hoá đơn'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
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
