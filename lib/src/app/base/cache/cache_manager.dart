import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../di/locator.dart';

final cacher = locator<CacheManager>();

class CacheManager {
  static CacheManager? _instance;

  CacheManager._() : _secureStorage = const FlutterSecureStorage();
  // Avoid self instance
  static CacheManager get instance => _instance ??= CacheManager._();

  final FlutterSecureStorage _secureStorage;

  Future<void> setString({required CacheKey key, required String value}) async {
    await _secureStorage.write(key: key.name, value: value);
  }

  Future<String?> getString({required CacheKey key}) async {
    return await _secureStorage.read(key: key.name);
  }

  Future<void> setBool({required CacheKey key, required bool value}) async {
    await _secureStorage.write(key: key.name, value: value.toString());
  }

  Future<bool?> getBool({required CacheKey key}) async {
    final value = await _secureStorage.read(key: key.name);
    return value == null ? null : value == 'true';
  }

  Future<void> setNum({required CacheKey key, required num value}) async {
    await _secureStorage.write(key: key.name, value: value.toString());
  }

  Future<num?> getNum({required CacheKey key}) async {
    final value = await _secureStorage.read(key: key.name);
    return value == null ? null : num.parse(value);
  }

  Future<void> delete({required CacheKey key}) async {
    await _secureStorage.delete(key: key.name);
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}

enum CacheKey { accessToken, isDarkMode, firstTime }
