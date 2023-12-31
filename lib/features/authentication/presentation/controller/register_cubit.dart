import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/authentication/data/model/user_register_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.baseAuthenticationRepository) : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final BaseAuthenticationRepository baseAuthenticationRepository;

  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();
  var formKey = GlobalKey<FormState>();

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
      passwordConfirmation: passwordConfirmation,
    );

    result.fold((failure){
      emit(UserRegisterFailureState(failure.errMessage.toString()));
      print(failure.errMessage);
    }, (userRegisterModel) {
      emit(UserRegisterSuccessState(userRegisterModel));
      print(userRegisterModel.user!.name);
    });
  }

  bool isVisibility = true;
  Icon icon = const Icon(Icons.visibility);

  void changeVisibility(){
    isVisibility = !isVisibility;
    isVisibility? icon = const Icon(Icons.visibility) :  icon = const Icon(Icons.visibility_off);
    emit(ChangeVisibilityState());
  }
}
