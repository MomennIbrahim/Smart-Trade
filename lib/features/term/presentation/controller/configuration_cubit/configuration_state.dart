part of 'configuration_cubit.dart';

@immutable
abstract class ConfigurationState {}

class ConfigurationInitial extends ConfigurationState {}

class ConfigurationLoadingState extends ConfigurationState {}
class ConfigurationSuccessState extends ConfigurationState {
  final ConfigurationModel configurationModel;

  ConfigurationSuccessState(this.configurationModel);
}
class ConfigurationFailureState extends ConfigurationState {
  final String errMessage;

  ConfigurationFailureState(this.errMessage);
}
