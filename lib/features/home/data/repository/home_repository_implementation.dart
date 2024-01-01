import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import 'package:task_app/features/home/data/model/sliders_model.dart';
import 'package:task_app/features/home/data/repository/base_home_reposirtory.dart';
import '../../../../core/constace.dart';
import '../../../../core/utils/end_points.dart';

class HomeRepositoryImplementation implements BaseHomeRepository {

  final ApiService apiService;

  HomeRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, SlidersModel>> getSliders() async{
    try {
      print('get slider method');
      var response = await apiService.getData(
        endPoint: EndPoints.getSliders,
        token: Constance.accessToken!,
      );
      SlidersModel slidersModel = SlidersModel.fromJson(response);
      print(slidersModel.message);
      return right(slidersModel);
    } catch (e) {
      if (e is DioException) {
        print(e.response.toString());
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

}