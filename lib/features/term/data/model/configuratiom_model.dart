class ConfigurationModel {

  ConfigurationModel.fromJson(dynamic json) {
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
    appName = json['app_name'];
    aboutApp = json['about_app'];
    heroText = json['hero_text'];
    longTerm = json['long_term'];
    mediumTerm = json['medium_term'];
    appLogo = json['app_logo'];
    footerLogo = json['footer_logo'];
    favIcon = json['fav_icon'];
    videoImage = json['video_image'];
    homeVideo = json['home_video'];
    address1 = json['address1'];
    address2 = json['address2'];
    copyrightLink = json['copyright_link'];
    copyrightText = json['copyright_text'];
  }
  String? appName;
  String? aboutApp;
  String? heroText;
  String? longTerm;
  String? mediumTerm;
  String? appLogo;
  String? footerLogo;
  String? favIcon;
  String? videoImage;
  String? homeVideo;
  String? address1;
  String? address2;
  String? copyrightLink;
  String? copyrightText;
}