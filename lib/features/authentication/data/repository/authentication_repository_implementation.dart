import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/core/utils/end_points.dart';
import 'package:task_app/features/authentication/data/model/user_model.dart';
import 'package:task_app/features/authentication/data/repository/base_authentication_repository.dart';

class AuthenticationRepositoryImplementation
    implements BaseAuthenticationRepository {
  final ApiService apiService;

  AuthenticationRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, UserModel>> userLogin({
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

      UserModel userModel = UserModel.fromJson(response);
      return right(userModel);
    } catch (e) {
      if (e is DioException) {
        print(e.response!.statusMessage);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserModel>> userRegister(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation,
      }) {
    throw UnimplementedError();
  }
}
