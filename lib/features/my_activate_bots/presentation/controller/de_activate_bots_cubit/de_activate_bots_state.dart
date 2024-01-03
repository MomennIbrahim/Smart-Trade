part of 'de_activate_bots_cubit.dart';

@immutable
abstract class DeActivateBotsState {}

class DeActivateBotsInitial extends DeActivateBotsState {}

class DeActivateBotsLoadingState extends DeActivateBotsState {}
class DeActivateBotsSuccessState extends DeActivateBotsState {
  final ChildBotsModel childBotsModel;

  DeActivateBotsSuccessState(this.childBotsModel);
}
class DeActivateBotsFailureState extends DeActivateBotsState {
  final String errMessage;

  DeActivateBotsFailureState(this.errMessage);
}
