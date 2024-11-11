// ignore_for_file: unused_field

part of '../data.dart';

class SecureLocalRepositoryImpl implements SecureLocalRepository {
  SecureLocalDataSource _localDataSource;
  SecureLocalRepositoryImpl({required SecureLocalDataSource localDataSource}) : _localDataSource = localDataSource;

  Future<void> create(String key, String value) async {
    await _localDataSource.create(key, value);
  }

  Future<String?> read(String key) async {
    return await _localDataSource.read(key);
  }

  Future<void> update(String key, String value) async {
    await _localDataSource.update(key, value);
  }

  Future<void> delete(String key) async {
    await _localDataSource.delete(key);
  }
}
