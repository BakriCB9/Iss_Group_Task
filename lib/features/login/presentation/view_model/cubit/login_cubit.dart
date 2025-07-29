import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:iss_task/core/constant/enum/status.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void login() async {
    if (formKey.currentState!.validate()) {
      emit(state.copyWith(status: Status.loding));
      try {
        await Future.delayed(Duration(seconds: 3));
        emit(state.copyWith(status: Status.success));
      } catch (e) {
        emit(state.copyWith(status: Status.fail));
      }
    }
    return;
  }
  
}
