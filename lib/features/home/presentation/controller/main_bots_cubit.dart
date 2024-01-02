import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/main_bots_model.dart';
import '../../data/repository/base_home_reposirtory.dart';

part 'main_bots_state.dart';

class MainBotsCubit extends Cubit<MainBotsState> {
  MainBotsCubit(this.baseHomeRepository) : super(MainBotsInitial());

  static MainBotsCubit get(context) => BlocProvider.of(context);

  final BaseHomeRepository baseHomeRepository;

  void getMainBots()async{

    emit(MainBotsLoadingState());

    var result = await baseHomeRepository.getMainBot();

    result.fold((failure){
      emit(MainBotsFailureState(failure.errMessage));
    }, (mainBotsModel){
      emit(MainBotsSuccessState(mainBotsModel));
    });
  }
}
