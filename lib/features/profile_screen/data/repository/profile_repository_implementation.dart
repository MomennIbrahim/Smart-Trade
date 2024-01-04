import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/core/utils/end_points.dart';
import 'package:task_app/features/profile_screen/data/model/setting_model.dart';
import 'package:task_app/features/profile_screen/data/repository/base_profile_repository.dart';

class ProfileRepositoryImplementation implements BaseProfileRepository {
  final ApiService apiService;

  ProfileRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, SettingModel>> getSetting() async {
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getSetting,
      );

      SettingModel settingModel = SettingModel.fromJson(response);

      return right(settingModel);
    } catch (e) {
      if (e is DioException) {
        print('------------------${e.toString()}');
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
