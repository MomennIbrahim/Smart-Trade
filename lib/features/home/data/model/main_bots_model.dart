class MainBotsModel {
  
  MainBotsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? MainBotsData.fromJson(json['data']) : null;
  }
  int? status;
  String? message;
  MainBotsData? data;
}

class MainBotsData {

  MainBotsData.fromJson(dynamic json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataModel.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = [];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }
  int? currentPage;
  List<DataModel>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

}

class Links {

  Links.fromJson(dynamic json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
  dynamic url;
  String? label;
  bool? active;

}

class DataModel {

  DataModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    status = json['status'];
    link = json['link'];
  }
  int? id;
  String? name;
  String? image;
  int? status;
  String? link;

}