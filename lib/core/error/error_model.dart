class ErrorModel {
  int? statusCode;
  String? errMessage;
  List<ErrorData> data = [];

  ErrorModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status'];
    errMessage = json['message'];
    json['data'].forEach((element){
      data.add(ErrorData.fromJson(element));
    });
  }
}

class ErrorData {
  String? message;

  ErrorData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }
}
