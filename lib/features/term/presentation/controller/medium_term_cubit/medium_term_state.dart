part of 'medium_term_cubit.dart';

@immutable
abstract class MediumTermState {}

class MediumTermInitial extends MediumTermState {}

class MediumTermLoadingState extends MediumTermState {}
class MediumTermSuccessState extends MediumTermState {
  final TermModel termModel;

  MediumTermSuccessState(this.termModel);
}
class MediumTermFailureState extends MediumTermState {
  final String errMessage;

  MediumTermFailureState(this.errMessage);
}
