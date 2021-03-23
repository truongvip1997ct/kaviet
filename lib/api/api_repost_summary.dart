import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/report_summary_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class APIServiceReport {
  Future<ReportSummaryResponsModel> reportSummary(ReportSummaryRequestModel requestModelSummary) async {
    String url = "http://cafe.kaviet.vn/api/v1/report/income-billing-form";
    final _key = "token";
    final storage = new FlutterSecureStorage();
    String tk = await storage.read(key: _key);
    Map<String, String> body = {
      "start_date": "1614531600",
      "end_date": "1616173199",
      "is_main": "true"
    };
    //print(ReportSummaryRequestModel().endDate);
    var response = http.post(url, body: body ,
    headers: {'Authorization' : 'Bearer ' + tk}).then((value) => {
        print(value)
    });
//    print(tk);

//    if (response.statusCode == 200 || response.statusCode == 400) {
//
//      return ReportSummaryResponsModel.fromJson(
//          json.decode(response.body));
//
//    } else {
//      throw Exception('Failed to load data!');
//    }
  }
}
