part of 'login_bloc.dart';

@immutable
sealed class LoginState {
  final bool isValidUsername;
  final bool isValidPassword;
  final String username;
  final String password;

  const LoginState(this.username, this.password,
      {required this.isValidUsername, required this.isValidPassword});
}

class LoginInitial extends LoginState {
  const LoginInitial({required String username, required String password})
      : super(username, password,
            isValidUsername: false, isValidPassword: false);
}

class LoginValid extends LoginState {
  const LoginValid({required String username, required String password})
      : super(username, password, isValidUsername: true, isValidPassword: true);
}

class LoginInvalid extends LoginState {
  const LoginInvalid(super.username, super.password,
      {required super.isValidUsername, required super.isValidPassword});
}
