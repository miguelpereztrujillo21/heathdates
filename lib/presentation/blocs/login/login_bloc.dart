import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<UsernameChanged>((event, emit) {
      if (event.username.isNotEmpty) {
        emit(const LoginValid());
      } else {
        emit(LoginInvalid(
            isValidUsername: event.username.isNotEmpty,
            isValidPassword: state.isValidPassword));
      }
    });

    on<PasswordChanged>((event, emit) {
      if (event.password.isNotEmpty) {
        emit(const LoginValid());
      } else {
        emit(LoginInvalid(
            isValidUsername: state.isValidUsername,
            isValidPassword: event.password.isNotEmpty));
      }
    });
  }
}
