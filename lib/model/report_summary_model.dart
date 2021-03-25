class ReportSummaryResponsModel {
  final bool success;
  final String error;
  final int formId;
  final String formName;
  final int totalBill;
  final int totalPrice;

  ReportSummaryResponsModel({this.success, this.error,this.formId,this.formName,this.totalBill,this.totalPrice});

  factory ReportSummaryResponsModel.fromJson(Map<String, dynamic> json) {


    return ReportSummaryResponsModel(
      success : json['success']  ? json['success'] :  false,
      formId : json['data']['billing_summary']['form_name'] != null ? json['data']['billing_summary']['form_name'] :  "",
      formName : json['data']['billing_summary']['formId'] != null ? json['data']['billing_summary']['formId'] :  "",
      totalBill : json['data']['billing_summary']['total_bill'] != null ? json['data']['billing_summary']['total_bill'] :  "",
      totalPrice : json['data']['billing_summary']['total_price'] != null ? json['data']['billing_summary']['total_price'] :  "",
      error: json["error"] != null ? json["error"] : "",

    );
  }
}

class ReportSummaryRequestModel {
  var startDate;
  var endDate;

  ReportSummaryRequestModel({
    this.startDate = 1614531600,
    this.endDate = 1616173199,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'start_date': startDate,
      'end_date': endDate,
    };

    return map;
  }
}