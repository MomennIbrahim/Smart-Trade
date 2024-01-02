part of 'main_bots_cubit.dart';

@immutable
abstract class MainBotsState {}

class MainBotsInitial extends MainBotsState {}

class MainBotsLoadingState extends MainBotsState {}
class MainBotsSuccessState extends MainBotsState {
  final MainBotsModel mainBotsModel;

  MainBotsSuccessState(this.mainBotsModel);
}
class MainBotsFailureState extends MainBotsState {
  final String errMessage;

  MainBotsFailureState(this.errMessage);
}
