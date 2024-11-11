part of '../../data.dart';

@JsonSerializable()
class AuthorizationRequest {
  String email;
  String password;
  AuthorizationRequest({
    required this.email,
    required this.password,
  });
  factory AuthorizationRequest.fromJson(Map<String, dynamic> json) => _$AuthorizationRequestFromJson(json);
  Map<String, dynamic> ToJson() => _$AuthorizationRequestToJson(this);
}
