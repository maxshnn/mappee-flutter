part of '../domain.dart';

abstract class SecureLocalRepository {
  Future<void> create(String key, String value);
  Future<String?> read(String key);
  Future<void> update(String key, String value);
  Future<void> delete(String key);
}
