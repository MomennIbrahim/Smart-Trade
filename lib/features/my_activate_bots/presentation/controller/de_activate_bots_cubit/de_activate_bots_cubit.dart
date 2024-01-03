import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../home/data/model/child_bots_model.dart';
import '../../../data/repository/base_my_bots_repository.dart';

part 'de_activate_bots_state.dart';

class DeActivateBotsCubit extends Cubit<DeActivateBotsState> {
  DeActivateBotsCubit(this.baseMyBotsRepository) : super(DeActivateBotsInitial());

  static DeActivateBotsCubit get(context) => BlocProvider.of(context);

  final BaseMyBotsRepository baseMyBotsRepository;

  void getDeActivateBots() async{

    emit(DeActivateBotsLoadingState());

    var result = await baseMyBotsRepository.getMyActivateBot();

    result.fold((failure) {
      emit(DeActivateBotsFailureState(failure.errMessage));
    }, (childBotsModel){
      emit(DeActivateBotsSuccessState(childBotsModel));
    });
  }
}
