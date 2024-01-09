import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/authentication/data/model/user_register_model.dart';
import 'package:task_app/features/profile/data/model/user_profile_model.dart';
import 'package:task_app/features/profile/data/repository/base_profile_repository.dart';

import '../../../../../core/utils/local_storage.dart';

part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.baseProfileRepository) : super(UserProfileInitial());

  static UserProfileCubit get(context) => BlocProvider.of(context);

  final BaseProfileRepository baseProfileRepository;

  UserProfileModel? model;

  void getUserProfile()async{

    emit(UserProfileLoadingState());

    var result = await baseProfileRepository.getUserProfile();

    result.fold((failure){
      emit(UserProfileFailureState(failure.errMessage));
    }, (userProfileModel){
      model = userProfileModel;
      emit(UserProfileSuccessState(userProfileModel));
    });
  }
}
