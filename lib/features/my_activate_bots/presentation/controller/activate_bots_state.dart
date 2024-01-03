part of 'activate_bots_cubit.dart';

@immutable
abstract class ActivateBotsState {}

class ActivateBotsInitial extends ActivateBotsState {}

class ActivateBotsLoadingState extends ActivateBotsState {}
class ActivateBotsSuccessState extends ActivateBotsState {
  final ChildBotsModel childBotsModel;

  ActivateBotsSuccessState(this.childBotsModel);
}
class ActivateBotsFailureState extends ActivateBotsState {
  final String errMessage;

  ActivateBotsFailureState(this.errMessage);
}
