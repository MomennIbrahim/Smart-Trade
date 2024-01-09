import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/features/profile/data/model/update_password_model.dart';
import 'package:task_app/features/profile/data/repository/base_profile_repository.dart';

part 'update_password_state.dart';

class UpdatePasswordCubit extends Cubit<UpdatePasswordState> {
  UpdatePasswordCubit(this.baseProfileRepository)
      : super(ChangePasswordInitial());

  final BaseProfileRepository baseProfileRepository;

  static UpdatePasswordCubit get(context) => BlocProvider.of(context);

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  FocusNode textFieldFocusNode = FocusNode();

  void updatePassword() async {
    emit(UpdatePasswordLoadingState());

    var result = await baseProfileRepository.updatePassword(
      oldPass: oldPasswordController.text,
      newPass: newPasswordController.text,
      newPassConfirmation: confirmNewPasswordController.text,
    );

    result.fold((failure) {
      emit(UpdatePasswordFailureState(failure.errMessage));
    }, (updatePasswordModel) {
      emit(UpdatePasswordSuccessState(updatePasswordModel));
      oldPasswordController.text = '';
      newPasswordController.text = '';
      confirmNewPasswordController.text = '';
    });
  }

  bool isVisibilityOldPass = true;
  bool isVisibilityNewPass = true;
  Icon oldIcon = const Icon(Icons.visibility);
  Icon newPassIcon = const Icon(Icons.visibility);

  void changeVisibilityOldPass() {
    isVisibilityOldPass = !isVisibilityOldPass;
    isVisibilityOldPass
        ? oldIcon = const Icon(Icons.visibility)
        : oldIcon = const Icon(Icons.visibility_off);
    emit(ChangeVisibilityState());
  }

  void changeVisibilityNewPass() {
    isVisibilityNewPass = !isVisibilityNewPass;
    isVisibilityNewPass
        ? newPassIcon = const Icon(Icons.visibility)
        : newPassIcon = const Icon(Icons.visibility_off);
    emit(ChangeVisibilityState());
  }
}
