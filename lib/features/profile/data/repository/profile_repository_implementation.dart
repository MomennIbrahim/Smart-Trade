import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/constace.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/core/utils/end_points.dart';
import 'package:task_app/features/profile/data/model/update_user_model.dart';
import 'package:task_app/features/profile/data/model/user_profile_model.dart';
import '../model/setting_model.dart';
import 'base_profile_repository.dart';

class ProfileRepositoryImplementation implements BaseProfileRepository {
  final ApiService apiService;

  ProfileRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, SettingModel>> getSetting() async {
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getSetting,
          token: Constance.accessToken!
      );

      SettingModel settingModel = SettingModel.fromJson(response);

      return right(settingModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserProfileModel>> getUserProfile() async{
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getUserProfile,
        token: Constance.accessToken!
      );

      UserProfileModel userProfileModel = UserProfileModel.fromJson(response);

      return right(userProfileModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UpdateUserModel>> updateUserProfile({required String name , required String email}) async{
    try {
      var response = await apiService.postData(
        endPoint: EndPoints.updateUserProfile,
        data: {
          'name' : name,
          'email' : email,
        }
      );
      UpdateUserModel updateUserModel = UpdateUserModel.fromJson(response);

      return right(updateUserModel);
    } catch (e) {
      if (e is DioException) {
        print('------------------${e.toString()}-------------------');
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
