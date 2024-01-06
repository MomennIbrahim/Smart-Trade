part of 'user_profile_cubit.dart';

@immutable
abstract class UserProfileState {}

class UserProfileInitial extends UserProfileState {}

class UserProfileLoadingState extends UserProfileState {}
class UserProfileSuccessState extends UserProfileState {
  final UserProfileModel userProfileModel;

  UserProfileSuccessState(this.userProfileModel);
}
class UserProfileFailureState extends UserProfileState {
  final String errMessage;

  UserProfileFailureState(this.errMessage);
}
