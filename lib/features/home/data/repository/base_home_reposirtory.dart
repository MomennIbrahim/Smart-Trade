import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import 'package:task_app/features/home/data/model/main_bots_model.dart';
import 'package:task_app/features/home/data/model/sliders_model.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, SlidersModel>> getSliders();

  Future<Either<Failure, MainBotsModel>> getMainBot();

  Future<Either<Failure, ChildBotsModel>> getChildBotsOfMain({required int mainBotId});

}
