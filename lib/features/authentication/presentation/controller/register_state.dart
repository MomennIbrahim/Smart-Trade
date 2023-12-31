part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class ChangeVisibilityState extends RegisterState {}

class UserRegisterLoadingState extends RegisterState {}
class UserRegisterSuccessState extends RegisterState {
  final UserRegisterModel userRegisterModel;

  UserRegisterSuccessState(this.userRegisterModel);
}
class UserRegisterFailureState extends RegisterState {
  final String errMessage;

  UserRegisterFailureState(this.errMessage);
}
