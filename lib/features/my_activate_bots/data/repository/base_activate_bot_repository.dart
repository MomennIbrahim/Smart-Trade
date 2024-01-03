import 'package:dartz/dartz.dart';
import 'package:task_app/features/home/data/model/child_bots_model.dart';
import '../../../../core/error/error.dart';

abstract class BaseActivateBotRepository{

  Future<Either<Failure,ChildBotsModel>> getMyActivateBot();
  
}