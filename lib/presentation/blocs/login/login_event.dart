part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class UsernameChanged extends LoginEvent {
  final String username;

  UsernameChanged({required this.username});
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged({required this.password});
}
