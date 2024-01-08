class UpdateUserModel {

  UpdateUserModel.fromJson(dynamic json) {
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
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    verified = json['verified'];
    twoFactorSecret = json['two_factor_secret'];
    twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
    twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    phone = json['phone'];
    state = json['state'];
    planId = json['plan_id'];
    statusPlan = json['Status_Plan'];
    paymentMethod = json['payment_method'];
    banned = json['banned'];
    startPlan = json['start_plan'];
    endPlan = json['end_plan'];
    commingAfflite = json['comming_afflite'];
    percentage = json['percentage'];
    discount = json['discount'];
    affiliateCode = json['affiliate_code'];
    affiliateLink = json['affiliate_link'];
    fcmToken = json['fcm_token'];
    imageProfile = json['image_profile'];
    imagePayment = json['image_payment'];
    fees = json['fees'];
    otp = json['otp'];
    numberOfUser = json['number_of_user'];
    exchange = json['exchange'];
    apikey = json['apikey'];
    secretkey = json['secretkey'];
    passphrase = json['passphrase'];
    botController = json['botController'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    tickers = json['tickers'];
    isBot = json['is_bot'];
    admins = json['admins'];
    ordersUsdt = json['orders_usdt'];
    numOrders = json['num_orders'];
    openOrders = json['open_orders'];
    availableProfit = json['available_profit'];
    withdrawedProfit = json['withdrawed_profit'];
    feesProfit = json['fees_profit'];
    plansProfit = json['plans_profit'];
    allProfit = json['all_profit'];
    withdrawStatus = json['withdraw_status'];
    username = json['username'];
    photo = json['photo'];
    address = json['address'];
    role = json['role'];
    status = json['status'];
    google2faSecret = json['google2fa_secret'];
  }
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  int? verified;
  dynamic twoFactorSecret;
  dynamic twoFactorRecoveryCodes;
  dynamic twoFactorConfirmedAt;
  dynamic phone;
  String? state;
  dynamic planId;
  dynamic statusPlan;
  String? paymentMethod;
  int? banned;
  dynamic startPlan;
  dynamic endPlan;
  String? commingAfflite;
  dynamic percentage;
  String? discount;
  dynamic affiliateCode;
  dynamic affiliateLink;
  dynamic fcmToken;
  dynamic imageProfile;
  dynamic imagePayment;
  int? fees;
  dynamic otp;
  int? numberOfUser;
  dynamic exchange;
  String? apikey;
  String? secretkey;
  String? passphrase;
  dynamic botController;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  dynamic tickers;
  dynamic isBot;
  dynamic admins;
  dynamic ordersUsdt;
  dynamic numOrders;
  int? openOrders;
  int? availableProfit;
  int? withdrawedProfit;
  int? feesProfit;
  int? plansProfit;
  int? allProfit;
  int? withdrawStatus;
  dynamic username;
  dynamic photo;
  dynamic address;
  String? role;
  String? status;
  dynamic google2faSecret;

}