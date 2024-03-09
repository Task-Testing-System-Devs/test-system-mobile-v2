import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService(this._storage);

  Future<String?> get token => _storage.read(key: 'token');

  void setToken(String token) {
    _storage.write(key: 'token', value: token);
  }

  Future<String?> getValue(String key) => _storage.read(key: key);

  void setValue({required String key, required String value}) => _storage.write(
        key: key,
        value: value,
      );
}
