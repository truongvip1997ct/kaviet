class LoginResponseModel {
  final bool success;
  final String error;
  final String token;

  LoginResponseModel({this.success, this.error, this.token});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {


    return LoginResponseModel(
      success : json['success']  ? json['success'] :  false,
      token : json['data']['access_token'] != null ? json['data']['access_token'] :  "",
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