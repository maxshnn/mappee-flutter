part of '../data.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDataSource _authRemoteDataSource;
  Mapper _mapper;
  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource, required Mapper mapper})
      : _authRemoteDataSource = authRemoteDataSource,
        _mapper = mapper;

  @override
  Future<Auth> registration(
    String email,
    String nickname,
    String phone,
    String password,
  ) async {
    var response = await _authRemoteDataSource.registration(
      RegistrationRequest(
        email: email,
        nickname: nickname,
        phone: phone,
        password: password,
      ).ToJson(),
    );
    var result = _mapper.convert<AuthResponse, Auth>(response);
    return result;
  }

  @override
  Future<Auth> authorization(
    String email,
    String password,
  ) async {
    var response = await _authRemoteDataSource.authorization(
      AuthorizationRequest(email: email, password: password).ToJson(),
    );
    var result = _mapper.convert<AuthResponse, Auth>(response);
    return result;
  }

  @override
  Future<User> profile(String token) async {
    var user = await _authRemoteDataSource.profile('Bearer $token');
    return _mapper.convert<UserModel, User>(user);
  }
}
