import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/error.dart';
import 'package:task_app/features/term/data/model/configuratiom_model.dart';
import '../model/term_model.dart';

abstract class BaseTermRepository{
  Future<Either<Failure,TermModel>> getMediumTerm();
  Future<Either<Failure,TermModel>> getLongTerm();
  Future<Either<Failure,ConfigurationModel>> getConfiguration();
}