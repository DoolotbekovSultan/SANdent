import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

/// Global GetIt instance for dependency injection.
/// Глобальный экземпляр GetIt для dependency injection.
final getIt = GetIt.instance;

/// Initializes all registered dependencies.
/// Инициализирует все зарегистрированные зависимости.
///
/// Call this in [main] before [runApp]. Pass the environment string
/// to select mock or prod implementations.
/// Вызовите в [main] перед [runApp]. Передайте строку окружения
/// для выбора mock или prod реализаций.
@InjectableInit()
Future<void> configureDependencies({String? environment}) =>
    getIt.init(environment: environment);
