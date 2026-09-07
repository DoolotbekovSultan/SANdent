import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// DI module providing local storage instances.
/// DI-модуль, предоставляющий локальные хранилища.
///
/// - [SharedPreferences] — for simple key-value storage (settings, flags).
///   Для простого key-value хранения (настройки, флаги).
/// - [FlutterSecureStorage] — for sensitive data (tokens, keys).
///   Для чувствительных данных (токены, ключи).
@module
abstract class StorageModule {
  /// SharedPreferences — initialized before app starts (@preResolve).
  /// SharedPreferences — инициализируется до запуска приложения (@preResolve).
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  /// Secure storage for tokens and sensitive data.
  /// Безопасное хранилище для токенов и чувствительных данных.
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
