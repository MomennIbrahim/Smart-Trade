class SlidersModel {

  SlidersModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(SlidersData.fromJson(v));
      });
    }
  }
  int? status;
  String? message;
  List<SlidersData>? data;
}

class SlidersData {

  SlidersData.fromJson(dynamic json) {
    title = json['title'];
    text = json['text'];
    image = json['image'];
  }
  String? title;
  String? text;
  String? image;
}