part of '../domain.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String nickname,
    @JsonKey(defaultValue: '') required String phone,
  }) = _User;
}
