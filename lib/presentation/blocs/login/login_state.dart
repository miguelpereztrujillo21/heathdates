part of 'login_bloc.dart';

@immutable
sealed class LoginState {
  final bool isValidUsername;
  final bool isValidPassword;

  const LoginState(
      {required this.isValidUsername, required this.isValidPassword});
}

class LoginInitial extends LoginState {
  const LoginInitial() : super(isValidUsername: false, isValidPassword: false);
}

class LoginValid extends LoginState {
  const LoginValid() : super(isValidUsername: true, isValidPassword: true);
}

class LoginInvalid extends LoginState {
  const LoginInvalid(
      {required super.isValidUsername, required super.isValidPassword});
}
