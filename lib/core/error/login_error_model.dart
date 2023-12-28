class LoginErrorModel {

  LoginErrorModel.fromJson(dynamic json) {
    email = json['email'] != null ? json['email'].cast<String>() : [];
    password = json['password'] != null ? json['password'].cast<String>() : [];
    error = json['error'];
  }
  List<String>? email;
  List<String>? password;
  String? error;
}