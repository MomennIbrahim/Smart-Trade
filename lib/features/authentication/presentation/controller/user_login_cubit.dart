import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

part 'user_login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this.baseAuthenticationRepository) : super(UerLoginInitial());

  static UserLoginCubit get(context) => BlocProvider.of(context);

  final BaseAuthenticationRepository baseAuthenticationRepository;

  UserLoginModel? userLoginModel;

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
      userLoginModel = userModel;
      emit(UserLoginSuccessState(userModel));
      print(userModel.accessToken);
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
