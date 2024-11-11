part of '../domain.dart';

abstract class AuthRepository {
  Future<Auth> registration(
    String email,
    String nickname,
    String phone,
    String password,
  );
  Future<Auth> authorization(
    String email,
    String password,
  );
  Future<User> profile(String token);
}
