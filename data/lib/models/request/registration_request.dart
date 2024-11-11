part of '../../data.dart';

@JsonSerializable()
class RegistrationRequest {
  String email;
  String nickname;
  String phone;
  String password;
  RegistrationRequest({
    required this.email,
    required this.nickname,
    required this.phone,
    required this.password,
  });
  factory RegistrationRequest.fromJson(Map<String, dynamic> json) => _$RegistrationRequestFromJson(json);
  Map<String, dynamic> ToJson() => _$RegistrationRequestToJson(this);
}
