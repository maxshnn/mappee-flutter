part of '../domain.dart';

class AuthUseCase {
  AuthRepository _authRepository;
  SecureLocalRepository _localRepository;
  AuthUseCase({
    required AuthRepository authRepository,
    required SecureLocalRepository localRepository,
  })  : _authRepository = authRepository,
        _localRepository = localRepository;

  Future<User> registration(
    String email,
    String nickname,
    String phone,
    String password,
  ) async {
    var response = await _authRepository.registration(email, nickname, phone, password);
    var token = response.tokens;
    _localRepository.create('token', token.accessToken);
    return response.user;
  }

  Future<bool> hasToken() async {
    var token = await _localRepository.read('token');

    return token != null;
  }

  Future<User> authorization(String email, String password) async {
    var response = await _authRepository.authorization(email, password);
    var token = response.tokens;
    _localRepository.create('token', token.accessToken);
    return response.user;
  }

  Future<User> profile() async {
    var token = await _localRepository.read('token');
    return await _authRepository.profile(token ?? '');
  }

  Future<void> logout() async {
    await _localRepository.delete('token');
  }
}
