part of 'slider_cubit.dart';

@immutable
abstract class SliderState {}

class SliderInitial extends SliderState {}

class SliderLoadingState extends SliderState{}
class SliderSuccessState extends SliderState{
  final SlidersModel slidersModel;

  SliderSuccessState(this.slidersModel);
}
class GetSliderFailureState extends SliderState{
  final String errMessage;

  GetSliderFailureState(this.errMessage);
}
