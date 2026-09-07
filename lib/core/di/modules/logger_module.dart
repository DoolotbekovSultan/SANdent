import 'package:injectable/injectable.dart';
import 'package:nexo/nexo.dart';
import 'package:talker/talker.dart';

/// DI module providing logging and crash reporting.
/// DI-модуль, предоставляющий логирование и краш-репорты.
///
/// Chain: Talker -> TalkerLoggerAdapter -> NexoLogger
/// Цепочка: Talker -> TalkerLoggerAdapter -> NexoLogger
@module
abstract class LoggerModule {
  /// Talker instance — underlying logger from the talker package.
  /// Экземпляр Talker — базовый логгер из пакета talker.
  @lazySingleton
  Talker get talker => Talker();

  /// Adapter bridging Talker to nexo's NexoLogger interface.
  /// Адаптер, связывающий Talker с интерфейсом NexoLogger.
  @lazySingleton
  TalkerLoggerAdapter talkerLoggerAdapter(Talker talker) =>
      TalkerLoggerAdapter(talker);

  /// NexoLogger instance — used throughout the app for structured logging.
  /// Экземпляр NexoLogger — используется во всём приложении для структурированного логирования.
  @lazySingleton
  NexoLogger nexoLogger(TalkerLoggerAdapter adapter) => adapter;

  /// Crash reporter — replace with Sentry/Crashlytics implementation.
  /// Краш-репортер — замените на реализацию Sentry/Crashlytics.
  @lazySingleton
  NexoCrashReporter nexoCrashReporter() => const NoOpNexoCrashReporter();
}
