class UserRegisterModel {

  UserRegisterModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
  }
  String? message;
  UserData? user;

}

class UserData {
  UserData({
      this.name, 
      this.email, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  UserData.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? name;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;

}