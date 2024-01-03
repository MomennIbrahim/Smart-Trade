import 'package:dartz/dartz.dart';
import 'package:task_app/core/error/error.dart';

import '../model/term_model.dart';

abstract class BaseTermRepository{
  Future<Either<Failure,TermModel>> getMediumTerm();
  Future<Either<Failure,TermModel>> getLongTerm();
}