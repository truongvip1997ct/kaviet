class UserResponseModel {
  final bool success;
  final String error;
  final int userId;
  final String Name;
  final int totalPrice;

  UserResponseModel({this.success, this.error, this.userId,this.Name,this.totalPrice});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {


    return UserResponseModel(
      success : json['success']  ? json['success'] :  false,
      userId : json['data']['user_id'] != null ? json['data']['user_id'] :  "",
      Name : json['data']['name'] != null ? json['data']['name'] :  "",
      totalPrice : json['data']['total_price'] != null ? json['data']['total_price'] :  "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class UserRequestModel {
  var startDate;
  var endDate;

  UserRequestModel  ({
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