import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../data/model/setting_model.dart';
import '../../data/repository/base_profile_repository.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit(this.baseProfileRepository) : super(SettingInitial());

  static SettingCubit get(context) => BlocProvider.of(context);

  final BaseProfileRepository baseProfileRepository;

  void getSetting()async{

    emit(SettingLoadingState());

    var result = await baseProfileRepository.getSetting();

    result.fold((failure){
      emit(SettingFailureState(failure.errMessage));
    }, (settingModel){
      emit(SettingSuccessState(settingModel));
    });
  }
}
