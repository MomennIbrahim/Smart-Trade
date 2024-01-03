import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repository/base_term_repository.dart';
import 'long_term_state.dart';


class LongTermCubit extends Cubit<LongTermState> {
  LongTermCubit(this.baseTermRepository) : super(LongTermInitial());

  final BaseTermRepository baseTermRepository;

  static LongTermCubit get(context) => BlocProvider.of(context);

  void getLongTerm()async{
    emit(LongTermLoadingState());

    var result = await baseTermRepository.getLongTerm();

    result.fold((failure){
      emit(LongTermFailureState(failure.errMessage));
    }, (termModel){
      emit(LongTermSuccessState(termModel));
    });
  }
}
