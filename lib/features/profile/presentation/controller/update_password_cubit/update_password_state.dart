part of 'update_password_cubit.dart';

@immutable
abstract class UpdatePasswordState {}

class ChangePasswordInitial extends UpdatePasswordState {}

class ChangeVisibilityState extends UpdatePasswordState {}

class UpdatePasswordLoadingState extends UpdatePasswordState {}
class UpdatePasswordSuccessState extends UpdatePasswordState {
  final UpdatePasswordModel updatePasswordModel;

  UpdatePasswordSuccessState(this.updatePasswordModel);
}
class UpdatePasswordFailureState extends UpdatePasswordState {
  final String errMessage;

  UpdatePasswordFailureState(this.errMessage);
}
