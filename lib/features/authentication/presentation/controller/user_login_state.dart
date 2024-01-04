part of 'user_login_cubit.dart';

@immutable
abstract class UserLoginState {}

class UerLoginInitial extends UserLoginState {}

class ChangeVisibilityState extends UserLoginState {}

class UserLoginLoadingState extends UserLoginState {}
class UserLoginSuccessState extends UserLoginState {
  final UserLoginModel userModel;

  UserLoginSuccessState(this.userModel);
}
class UserLoginFailureState extends UserLoginState {
  final String errMessage;

  UserLoginFailureState(this.errMessage);
}

