import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_app/features/authentication/data/repository/authentication_repository_implementation.dart';
import 'api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {

  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<AuthenticationRepositoryImplementation>(AuthenticationRepositoryImplementation(
      getIt.get<ApiService>()
  ));
}