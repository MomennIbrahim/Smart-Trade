import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_app/features/authentication/data/repository/authentication_repository_implementation.dart';
import 'package:task_app/features/home/data/repository/home_repository_implementation.dart';
import 'package:task_app/features/my_activate_bots/data/repository/my_bots_repository_implementation.dart';
import 'package:task_app/features/profile_screen/data/repository/profile_repository_implementation.dart';
import '../../features/term/data/repository/term_repository_implementation.dart';
import 'api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<AuthenticationRepositoryImplementation>(
      AuthenticationRepositoryImplementation(getIt.get<ApiService>()));

  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(getIt.get<ApiService>()));

  getIt.registerSingleton<MyBotsRepositoryImplementation>(
      MyBotsRepositoryImplementation(getIt.get<ApiService>()));

  getIt.registerSingleton<TermRepositoryImplementation>(
      TermRepositoryImplementation(getIt.get<ApiService>()));

  getIt.registerSingleton<ProfileRepositoryImplementation>(
      ProfileRepositoryImplementation(getIt.get<ApiService>()));
}
