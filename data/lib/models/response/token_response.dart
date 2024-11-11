part of '../../data.dart';

@JsonSerializable()
class TokenResponse {
  String accessToken;
  String refreshToken;
  TokenResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
  Map<String, dynamic> ToJson() => _$TokenResponseToJson(this);
}
