import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/model/term_model.dart';
import '../../../data/repository/base_term_repository.dart';

part 'medium_term_state.dart';

class MediumTermCubit extends Cubit<MediumTermState> {
  MediumTermCubit(this.baseTermRepository) : super(MediumTermInitial());

  final BaseTermRepository baseTermRepository;

  static MediumTermCubit get(context) => BlocProvider.of(context);


  void getMediumTerm()async{
    emit(MediumTermLoadingState());

    var result = await baseTermRepository.getMediumTerm();

    result.fold((failure){
      emit(MediumTermFailureState(failure.errMessage));
    }, (termModel){
      emit(MediumTermSuccessState(termModel));
    });
  }
}
