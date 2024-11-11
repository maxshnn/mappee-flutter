part of '../domain.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required String accessToken,
    required String refreshToken,
  }) = _Token;
}
