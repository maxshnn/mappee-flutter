part of '../../data.dart';

@JsonSerializable()
class AuthResponse {
  UserModel user;
  TokenResponse tokens;
  AuthResponse({
    required this.user,
    required this.tokens,
  });
  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
  Map<String, dynamic> ToJson() => _$AuthResponseToJson(this);
}
