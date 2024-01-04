import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';
import 'package:task_app/features/authentication/data/model/user_register_model.dart';

abstract class BaseAuthenticationRepository {

  Future<Either<Failure, UserLoginModel>> userLogin({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserRegisterModel>> userRegister({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  });

  // Future<Either<Failure, UserLoginModel>> refreshToken();

}
