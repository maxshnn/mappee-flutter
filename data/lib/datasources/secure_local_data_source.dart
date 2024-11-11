part of '../data.dart';

class SecureLocalDataSource {
  FlutterSecureStorage _storage;
  SecureLocalDataSource({required FlutterSecureStorage storage}) : _storage = storage;

  Future<void> create(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> update(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }
}
