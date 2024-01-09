part of 'logout_cubit.dart';

@immutable
abstract class LogoutState {}

class LogoutInitial extends LogoutState {}

class UserLogoutLoadingState extends LogoutState {}
class UserLogoutSuccessState extends LogoutState {
  final UserRegisterModel userLogout;

  UserLogoutSuccessState(this.userLogout);
}
class UserLogoutFailureState extends LogoutState {
  final String errMessage;

  UserLogoutFailureState(this.errMessage);
}
