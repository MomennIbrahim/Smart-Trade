import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/core/utils/api_service.dart';
import '../../../../core/constace.dart';
import '../../../../core/utils/end_points.dart';
import '../model/term_model.dart';
import 'base_term_repository.dart';

class TermRepositoryImplementation implements BaseTermRepository {
  final ApiService apiService;

  TermRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failure, TermModel>> getMediumTerm() async {
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getMediumTerm,
        token: Constance.accessToken!,
      );
      TermModel termModel = TermModel.fromJson(response);
      return right(termModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, TermModel>> getLongTerm() async{
    try {
      var response = await apiService.getData(
        endPoint: EndPoints.getLongTerm,
        token: Constance.accessToken!,
      );
      TermModel termModel = TermModel.fromJson(response);
      return right(termModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
