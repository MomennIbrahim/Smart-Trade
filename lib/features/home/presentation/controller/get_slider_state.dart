part of 'get_slider_cubit.dart';

@immutable
abstract class GetSliderState {}

class GetSliderInitial extends GetSliderState {}

class GetSliderLoadingState extends GetSliderState{}
class GetSliderSuccessState extends GetSliderState{
  final SlidersModel slidersModel;

  GetSliderSuccessState(this.slidersModel);
}
class GetSliderFailureState extends GetSliderState{
  final String errMessage;

  GetSliderFailureState(this.errMessage);
}
