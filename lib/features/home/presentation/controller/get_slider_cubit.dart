import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/sliders_model.dart';
import 'package:task_app/features/home/data/repository/base_home_reposirtory.dart';
import '../../../../core/constace.dart';

part 'get_slider_state.dart';

class GetSliderCubit extends Cubit<GetSliderState> {
  GetSliderCubit(this.baseHomeRepository) : super(GetSliderInitial());

  static GetSliderCubit get(context) => BlocProvider.of(context);

  final BaseHomeRepository baseHomeRepository;

  void getSliders()async{

    emit(GetSliderLoadingState());

    var result = await baseHomeRepository.getSliders();

    result.fold((failure){
      emit(GetSliderFailureState(failure.errMessage));
    }, (slidersModel){
      emit(GetSliderSuccessState(slidersModel));
    });
  }
}
