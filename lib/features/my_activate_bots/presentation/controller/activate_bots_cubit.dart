import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import 'package:task_app/features/my_activate_bots/data/repository/base_activate_bot_repository.dart';

part 'activate_bots_state.dart';

class ActivateBotsCubit extends Cubit<ActivateBotsState> {
  ActivateBotsCubit(this.baseActivateBotRepository) : super(ActivateBotsInitial());

  static ActivateBotsCubit get(context) => BlocProvider.of(context);

  final BaseActivateBotRepository baseActivateBotRepository;

  void getActivateBots() async{

    emit(ActivateBotsLoadingState());

    var result = await baseActivateBotRepository.getMyActivateBot();

    result.fold((failure) {
      emit(ActivateBotsFailureState(failure.errMessage));
    }, (childBotsModel){
      emit(ActivateBotsSuccessState(childBotsModel));
    });
  }

}
