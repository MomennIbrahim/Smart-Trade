import 'package:dartz/dartz.dart';
import '../../../../core/error/error.dart';
import '../model/setting_model.dart';
import '../model/user_profile_model.dart';

abstract class BaseProfileRepository {
  Future<Either<Failure,SettingModel>> getSetting();
  Future<Either<Failure,UserProfileModel>> getUserProfile();
}