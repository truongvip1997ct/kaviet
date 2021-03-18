class LoginResponseModel {
  final bool success;
  final String error;

  LoginResponseModel({this.success, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {


    return LoginResponseModel(
      success : json['success']  ? json['success'] :  false,
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String username;
  String password;

  LoginRequestModel({
    this.username,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': username.trim(),
      'password': password.trim(),
    };

    return map;
  }
}