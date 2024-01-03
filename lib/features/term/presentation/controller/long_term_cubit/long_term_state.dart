import '../../../data/model/term_model.dart';

abstract class LongTermState {}

class LongTermInitial extends LongTermState {}

class LongTermLoadingState extends LongTermState {}
class LongTermSuccessState extends LongTermState {
  final TermModel termModel;

  LongTermSuccessState(this.termModel);
}
class LongTermFailureState extends LongTermState {
  final String errMessage;

  LongTermFailureState(this.errMessage);
}
