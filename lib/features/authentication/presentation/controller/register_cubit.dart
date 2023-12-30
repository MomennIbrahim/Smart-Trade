import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/authentication/data/model/user_register_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.baseAuthenticationRepository) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final BaseAuthenticationRepository baseAuthenticationRepository;


  void userRegister({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
}) async {
    emit(UserRegisterLoadingState());

    var result = await baseAuthenticationRepository.userRegister(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,);

    result.fold((failure){
      emit(UserRegisterFailureState(failure.errMessage.toString()));
    }, (userRegisterModel) {
      emit(UserRegisterSuccessState(userRegisterModel));
    });
  }
}
