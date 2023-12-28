class LoginErrorModel{

   String? error;

  LoginErrorModel.fromJson(Map<String,dynamic> json){
    error = json['error'];
  }
}