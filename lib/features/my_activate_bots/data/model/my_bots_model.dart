class MyBotsModel {

  MyBotsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? status;
  String? message;
  Data? data;

}

class Data {

  Data.fromJson(dynamic json) {
    profits = json['profits'] != null ? json['profits'].cast<double>() : [];
    if (json['details'] != null) {
      details = [];
      json['details'].forEach((v) {
        details?.add(Details.fromJson(v));
      });
    }
  }
  List<double>? profits;
  List<Details>? details;
}

class Details {

  Details.fromJson(dynamic json) {
    id = json['id'];
    botName = json['bot_name'];
    ticker = json['ticker'];
    typeName = json['type_name'];
    typeId = json['type_id'];
    descEn = json['desc_en'];
    descAr = json['desc_ar'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    link = json['link'];
  }
  int? id;
  String? botName;
  String? ticker;
  String? typeName;
  int? typeId;
  String? descEn;
  String? descAr;
  String? image;
  dynamic createdAt;
  String? updatedAt;
  int? status;
  String? link;
}