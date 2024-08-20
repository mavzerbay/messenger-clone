import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../di/locator.dart';

final cacher = locator<CacheManager>();

class CacheManager {
  static CacheManager? _instance;

  CacheManager._() : _secureStorage = const FlutterSecureStorage();

  factory CacheManager() => _instance ??= CacheManager._();

  final FlutterSecureStorage _secureStorage;

  Future<void> write(
      {required CacheManagerItem key, required String value}) async {
    await _secureStorage.write(key: key.name, value: value);
  }

  Future<String?> read({required CacheManagerItem key}) async {
    return await _secureStorage.read(key: key.name);
  }

  Future<void> delete({required CacheManagerItem key}) async {
    await _secureStorage.delete(key: key.name);
  }

  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}

enum CacheManagerItem {
  accessToken,
}
