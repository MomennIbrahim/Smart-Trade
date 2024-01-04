import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import 'package:task_app/features/my_activate_bots/data/repository/base_my_bots_repository.dart';
import '../../../../core/utils/end_points.dart';

class MyBotsRepositoryImplementation implements BaseMyBotsRepository{

  final ApiService apiService;

  MyBotsRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, ChildBotsModel>> getMyActivateBot() async{
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getMyActivateBots,
      );

      ChildBotsModel childBotsModel = ChildBotsModel.fromJson(response);
      return right(childBotsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, ChildBotsModel>> getMyDeActivateBot() async{
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getMyDeActivateBots,
      );

      ChildBotsModel childBotsModel = ChildBotsModel.fromJson(response);
      return right(childBotsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}