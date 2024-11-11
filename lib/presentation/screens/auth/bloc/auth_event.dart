part of 'auth_bloc.dart';

class AuthEvent {}

class CheckTokenEvent extends AuthEvent {}

class AuthorizationEvent extends AuthEvent {
  final String login;
  final String password;

  AuthorizationEvent({
    required this.login,
    required this.password,
  });
}

class RegistrationEvent extends AuthEvent {
  final String nickname;
  final String email;
  final String phone;
  final String password;
  RegistrationEvent({
    required this.nickname,
    required this.email,
    required this.phone,
    required this.password,
  });
}

class LogoutEvent extends AuthEvent {}

class FetchProfileEvent extends AuthEvent {}
