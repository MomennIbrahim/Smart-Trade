import 'package:dartz/dartz.dart';
import 'package:task_app/features/profile_screen/data/model/setting_model.dart';

import '../../../../core/error/error.dart';

abstract class BaseProfileRepository {
  Future<Either<Failure,SettingModel>> getSetting();
}