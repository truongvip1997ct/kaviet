import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/report_summary_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class APIServiceReport{
  Future<Map> reportSummary(ReportSummaryRequestModel requestModelSummary) async {
    var data = await http
        .get("http://cafe.kaviet.vn/api/v1/report/income-billing-form/?start_date=1614531600&end_date=1616173199&is_main=true", headers: {
      "Authorization":
      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODQ5ZWUwNDE0NDlmNzRlM2U1NTc2ZDQzZDA0OTAwMTE3NGMxNGMwMjViNjA2MmIxYTE3ODMxNzMzZGM2ZmEyMDMxN2VmNjViNTYwNGQ3ZWMiLCJpYXQiOjE2MTY1NTUzOTMsIm5iZiI6MTYxNjU1NTM5MywiZXhwIjoxNjQ4MDkxMzkzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.h__HSnPshzEOWXqgqw806OnGPJtJv71HzsvHgKNINIvRkVoWjM5C0IScWEpQoT1ds1ZbffWpOEH0iwI_OGUlj9Tw2XbOC3MkAmdc7tBCTewKx4-WD7S78RLNsD7pJe-wcBpYbF8FEb6fsH73ce5FYZw2XSLBjqwtLOMG4kIc_K0zL11DsSLVq9eRLcRA3dF4lk4tIrys8FldLgsqwK6nt8G0OQ7n4WslUFx0Wfi5YzRM_kwWnZKdq5aTLbUx5haovd4R4MbZ3mQrXREHhqulMiLHlCTb5BVmM8AcpHTChW25dr4_V_6XkTEJnLWe9TPJTqi2XEcRsJbaO-8YcDFLV36r4w25__azpmBXSBkKRBMs0_Gnvly1l68P_9tJVVuJgTDiXdMOnRhM6_SqiIGbegjZ1S1wEFQPje4MY7r2hOd91N2y40bMHeVaUExh8eNhNfPhYc_mPRpXy6Hs00te5gb_6ligakLDYbXpSmYTmFY8i2J2ylaHEHHKWp79iYvM6BV9VbSt-rQ35mzO6W2smKM9NRGhZFuYCfZWz4F6v0j3bCbp4n6IIKujm0KqIqK2Tq7oRQyyKaI3RCPctvE4L1hkFH1gRHCpLeLkErQv3GGd4_jq9BAyJBBTyXt8xY7MP8zX3C9jqJZ8S-R_c_Mcml1LKS43r0zpf0oF2h-RBgE"
    });
    var jsonData = json.decode(data.body);
        print(jsonData);
        return jsonData;

    //    String url = "http://cafe.kaviet.vn/api/v1/report/income-billing-form/";
//    final _key = "token";
//    final storage = new FlutterSecureStorage();
//    String tk = await storage.read(key: _key);
//    Map<String, String> body = {
//      "start_date": "1614531600",
//      "end_date": "1616173199",
//      "is_main": "true"
//    };
//    //print(ReportSummaryRequestModel().endDate);
//    var response = http.get(url +'start_date' : '1614531600',
//    headers: {'Authorization' : 'Bearer ' + tk}).then((value) => {
//        print(value.body)
//    });

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
