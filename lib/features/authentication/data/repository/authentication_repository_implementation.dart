import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/core/utils/end_points.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';
import 'package:task_app/features/authentication/data/model/user_register_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

class AuthenticationRepositoryImplementation
    implements BaseAuthenticationRepository {
  final ApiService apiService;

  AuthenticationRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, UserLoginModel>> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      var response = await apiService.postData(
        endPoint: EndPoints.login,
        data: {
          'email': email,
          'password': password,
        },
      );

      UserLoginModel userModel = UserLoginModel.fromJson(response);
      return right(userModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserRegisterModel>> userRegister(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation,
      }) async{
    try {
      var response = await apiService.postData(
        endPoint: EndPoints.login,
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': passwordConfirmation,
        },
      );
      UserRegisterModel userRegisterModel = UserRegisterModel.fromJson(response);
      return right(userRegisterModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
