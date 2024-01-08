part of 'edit_profile_cubit.dart';

@immutable
abstract class EditProfileState {}

class EditProfileInitial extends EditProfileState {}

class EditProfileLoadingState extends EditProfileState {}
class EditProfileSuccessState extends EditProfileState {
  final UpdateUserModel updateUserModel;
  EditProfileSuccessState(this.updateUserModel);
}
class EditProfileFailureState extends EditProfileState {
  final String errMessage ;
  EditProfileFailureState(this.errMessage);
}
