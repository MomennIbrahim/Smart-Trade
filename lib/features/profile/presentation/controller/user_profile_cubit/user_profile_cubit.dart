import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/profile/data/model/user_profile_model.dart';
import 'package:task_app/features/profile/data/repository/base_profile_repository.dart';

part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.baseProfileRepository) : super(UserProfileInitial());

  static UserProfileCubit get(context) => BlocProvider.of(context);

  final BaseProfileRepository baseProfileRepository;


  void getUserProfile()async{

    emit(UserProfileLoadingState());

    var result = await baseProfileRepository.getUserProfile();

    result.fold((failure){
      emit(UserProfileFailureState(failure.errMessage));
    }, (userProfileModel){
      print(userProfileModel.name);
      emit(UserProfileSuccessState(userProfileModel));
    });

  }
}
