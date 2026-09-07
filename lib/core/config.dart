import 'package:flutter/foundation.dart';

/// Application environments for dependency injection.
/// Окружения приложения для dependency injection.
///
/// Used by injectable to register environment-specific implementations.
/// Используется injectable для регистрации реализаций для конкретного окружения.
abstract final class AppEnvironment {
  static const mock = 'mock';
  static const prod = 'prod';

  static String resolve({required bool useMock}) =>
      useMock ? mock : prod;
}

/// Whether to use mock datasources (default: true in debug, false in release).
/// Использовать ли mock-датасорсы (по умолчанию: true в debug, false в release).
///
/// Override with: --dart-define=USE_MOCK=false
/// Переопределить: --dart-define=USE_MOCK=false
bool get kUseMock {
  if (kReleaseMode) {
    return const bool.fromEnvironment('USE_MOCK', defaultValue: false);
  }
  return const bool.fromEnvironment('USE_MOCK', defaultValue: true);
}

/// Backend API base URL.
/// Базовый URL бэкенда.
///
/// Override with: --dart-define=API_BASE_URL=https://api.example.com
/// Переопределить: --dart-define=API_BASE_URL=https://api.example.com
String get kApiBaseUrl {
  const fromEnv = String.fromEnvironment('API_BASE_URL');
  if (fromEnv.isNotEmpty) return fromEnv;
  return 'http://157.22.204.40/api/v1';
}


