import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/term/data/model/configuratiom_model.dart';
import 'package:task_app/features/term/data/repository/base_term_repository.dart';

part 'configuration_state.dart';

class ConfigurationCubit extends Cubit<ConfigurationState> {
  ConfigurationCubit(this.baseTermRepository) : super(ConfigurationInitial());

  static ConfigurationCubit get(context)=>BlocProvider.of(context);

  final BaseTermRepository baseTermRepository;

  ConfigurationModel? model;

  void getConfiguration()async{

    emit(ConfigurationLoadingState());

    var result = await baseTermRepository.getConfiguration();

    result.fold((failure){
      emit(ConfigurationFailureState(failure.errMessage));
    }, (configurationModel){
      model = configurationModel ;
      emit(ConfigurationSuccessState(configurationModel));
    });
  }
}
