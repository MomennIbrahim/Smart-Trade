class SettingModel {

  SettingModel.fromJson(dynamic json) {
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
    id = json['id'];
    email = json['email'];
    mobile = json['mobile'];
    mobile2 = json['mobile2'];
    whatsapp = json['whatsapp'];
    facebook = json['facebook'];
    instgram = json['instgram'];
    twitter = json['twitter'];
    behance = json['behance'];
    dribbble = json['dribbble'];
    linkedin = json['linkedin'];
    youtube = json['youtube'];
    website = json['website'];
    mapUrl = json['map_url'];
    defaultLang = json['default_lang'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? email;
  dynamic mobile;
  dynamic mobile2;
  dynamic whatsapp;
  String? facebook;
  String? instgram;
  String? twitter;
  String? behance;
  String? dribbble;
  dynamic linkedin;
  dynamic youtube;
  String? website;
  dynamic mapUrl;
  String? defaultLang;
  dynamic createdAt;
  String? updatedAt;

}