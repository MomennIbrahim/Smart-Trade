import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

part 'user_login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this.baseAuthenticationRepository) : super(AuthInitial());

  static UserLoginCubit get(context) => BlocProvider.of(context);

  final BaseAuthenticationRepository baseAuthenticationRepository;

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void userLogin({
    required String email,
    required String password,
  }) async {

    emit(UserLoginLoadingState());

    var result = await baseAuthenticationRepository.userLogin(
      email: email,
      password: password,
    );

    result.fold((failure){
      emit(UserLoginFailureState(failure.errMessage));
      print(failure.errMessage.toString());
    }, (userModel){
      emit(UserLoginSuccessState(userModel));
      print(userModel.user!.name);
    });
  }
}
