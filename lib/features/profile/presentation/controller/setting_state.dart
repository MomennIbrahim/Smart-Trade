part of 'setting_cubit.dart';

@immutable
abstract class SettingState {}

class SettingInitial extends SettingState {}

class SettingLoadingState extends SettingState {}
class SettingSuccessState extends SettingState {
  final SettingModel settingModel;

  SettingSuccessState(this.settingModel);
}
class SettingFailureState extends SettingState {
  final String errMessage;

  SettingFailureState(this.errMessage);
}
