import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/features/authentication/data/model/user_model.dart';

abstract class BaseAuthenticationRepository {
  Future<Either<ServerFailure, UserModel>> userLogin({
    required String email,
    required String password,
  });
}
