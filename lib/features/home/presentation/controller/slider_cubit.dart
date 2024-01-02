import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/sliders_model.dart';
import 'package:task_app/features/home/data/repository/base_home_reposirtory.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit(this.baseHomeRepository) : super(SliderInitial());

  static SliderCubit get(context) => BlocProvider.of(context);

  final BaseHomeRepository baseHomeRepository;

  void getSliders()async{

    emit(SliderLoadingState());

    var result = await baseHomeRepository.getSliders();

    result.fold((failure){
      emit(GetSliderFailureState(failure.errMessage));
    }, (slidersModel){
      emit(SliderSuccessState(slidersModel));
    });
  }
}
