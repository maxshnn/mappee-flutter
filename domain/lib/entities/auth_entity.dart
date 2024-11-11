part of '../domain.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required User user,
    required Token tokens,
  }) = _Auth;
}
