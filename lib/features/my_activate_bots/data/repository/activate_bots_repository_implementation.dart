import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import 'package:task_app/features/my_activate_bots/data/repository/base_activate_bot_repository.dart';
import '../../../../core/utils/end_points.dart';

class ActivateBotsRepositoryImplementation implements BaseActivateBotRepository{

  final ApiService apiService;

  ActivateBotsRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, ChildBotsModel>> getMyActivateBot() async{
    try {
      if (kDebugMode) {
        print('----------Activate Bots-----------');
      }

      var response = await apiService.getData(
        endPoint: EndPoints.getMyActivateBots,
        token: Constance.accessToken!,
      );

      ChildBotsModel childBotsModel = ChildBotsModel.fromJson(response);
        print(childBotsModel.message);
      return right(childBotsModel);
    } catch (e) {
      if (e is DioException) {
          print(e);
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

}