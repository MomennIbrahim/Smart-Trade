import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/profile/data/model/update_user_model.dart';
import 'package:task_app/features/profile/data/repository/base_profile_repository.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/success_snack_bar.dart';
import '../user_profile_cubit/user_profile_cubit.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this.baseProfileRepository) : super(EditProfileInitial());

  static EditProfileCubit get(context) => BlocProvider.of(context);

  final BaseProfileRepository baseProfileRepository;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();


  void updateUserProfile({
    required String name,
    required String email,
}) async {

    emit(EditProfileLoadingState());
    var result = await baseProfileRepository.updateUserProfile(name: name, email: email);

    result.fold((failure){
      emit(EditProfileFailureState(failure.errMessage));
    }, (updateUserModel) {
      emit(EditProfileSuccessState(updateUserModel));
    });
  }

   stateIsSuccess(state,context){
    GoRouter.of(context).go(AppRouter.kHomeScreen);
    UserProfileCubit.get(context).getUserProfile();
    successSnackBar(context: context, message: state.updateUserModel.message!);
  }
}
