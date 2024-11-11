part of "../data.dart";

@AutoMappr([
  MapType<UserModel, User>(),
  MapType<AuthResponse, Auth>(),
  MapType<TokenResponse, Token>(),
])
class Mapper extends $Mapper {}
