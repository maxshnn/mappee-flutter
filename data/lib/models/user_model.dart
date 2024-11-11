part of '../data.dart';

@JsonSerializable()
class UserModel {
  int id;
  String email;
  String nickname;
  @JsonKey(defaultValue: '')
  String phone;
  UserModel({
    required this.id,
    required this.email,
    required this.nickname,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> ToJson() => _$UserModelToJson(this);
}
