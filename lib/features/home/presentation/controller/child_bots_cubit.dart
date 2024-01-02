import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/home/data/repository/base_home_reposirtory.dart';
import '../../data/model/child_bots_model.dart';

part 'child_bots_state.dart';

class ChildBotsCubit extends Cubit<ChildBotsState> {
  ChildBotsCubit(this.baseHomeRepository) : super(ChildBotsInitial());

  static ChildBotsCubit get(context) => BlocProvider.of(context);

  final BaseHomeRepository baseHomeRepository;

  void getChildBotsOfMain({required mainBotId})async{

    emit(ChildBotsLoadingState());

    var result = await baseHomeRepository.getChildBotsOfMain(mainBotId: mainBotId);

    result.fold((failure){
      emit(ChildBotsFailureState(failure.errMessage));
    }, (childBotsModel){
      emit(ChildBotsSuccessState(childBotsModel));
    });
  }
}
