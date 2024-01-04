import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/authentication/data/model/user_login_model.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import 'package:task_app/features/home/data/model/main_bots_model.dart';
import 'package:task_app/features/home/data/model/sliders_model.dart';
import 'package:task_app/features/home/data/repository/base_home_reposirtory.dart';
import '../../../../core/utils/end_points.dart';

class HomeRepositoryImplementation implements BaseHomeRepository {
  final ApiService apiService;

  HomeRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, SlidersModel>> getSliders() async {
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getSliders,
      );
      SlidersModel slidersModel = SlidersModel.fromJson(response);
      return right(slidersModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, MainBotsModel>> getMainBot() async {
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getMainBots,
      );
      MainBotsModel mainBotsModel = MainBotsModel.fromJson(response);
      return right(mainBotsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, ChildBotsModel>> getChildBotsOfMain(
      {required int mainBotId}) async {
    try {
      var response = await apiService.getData(
        endPoint: '${EndPoints.getChildBotsOfMain}$mainBotId',
      );
      ChildBotsModel childBotsOfMainModel = ChildBotsModel.fromJson(response);
      return right(childBotsOfMainModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserLoginModel>> refreshToken() async{
    try {
      var response = await apiService.postData(
        endPoint: EndPoints.refresh,
      );
      UserLoginModel userLoginModel = UserLoginModel.fromJson(response);
      return right(userLoginModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
