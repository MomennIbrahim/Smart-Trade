part of 'child_bots_cubit.dart';

@immutable
abstract class ChildBotsState {}

class ChildBotsInitial extends ChildBotsState {}

class ChildBotsLoadingState extends ChildBotsState {}
class ChildBotsSuccessState extends ChildBotsState {
  final ChildBotsModel childBotsModel;

  ChildBotsSuccessState(this.childBotsModel);
}
class ChildBotsFailureState extends ChildBotsState {
  final String errMessage;

  ChildBotsFailureState(this.errMessage);
}
