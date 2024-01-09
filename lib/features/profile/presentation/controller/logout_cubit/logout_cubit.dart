import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/utils/local_storage.dart';
import '../../../../authentication/data/model/user_register_model.dart';
import '../../../data/repository/base_profile_repository.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.baseProfileRepository) : super(LogoutInitial());

  final BaseProfileRepository baseProfileRepository;

  static LogoutCubit get(context) => BlocProvider.of(context);


  void userLogout()async{

    emit(UserLogoutLoadingState());

    var result = await baseProfileRepository.userLogout();

    result.fold((failure){
      emit(UserLogoutFailureState(failure.errMessage));
    }, (userLogoutModel){
      emit(UserLogoutSuccessState(userLogoutModel));
      CacheHelper.removeData(key: 'token');
    });
  }
}
