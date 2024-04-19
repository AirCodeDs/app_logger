import 'package:app_logger/src/log_type.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static AppLogger? _instance;
  bool _isActive;

  AppLogger._(this._isActive);

  // Méthode factory pour créer ou récupérer l'instance unique du singleton
  factory AppLogger({bool isActive = true}) {
    _instance ??= AppLogger._(isActive);
    return _instance!;
  }

  // Méthode pour activer ou désactiver les logs
  void setIsActive(bool isActive) {
    _isActive = isActive;
  }

  void call({
    required dynamic message,
    required LogType logType,
    required bool hidden,
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!_isActive || hidden)
      return; // Ne rien faire si les logs sont désactivés

    switch (logType) {
      case LogType.error:
        Logger().e(message, time: time, stackTrace: stackTrace);
        break;
      case LogType.warning:
        Logger().w(message, time: time, stackTrace: stackTrace);
        break;
      case LogType.info:
        Logger().i(message, time: time, stackTrace: stackTrace);
        break;
      case LogType.normal:
        Logger().t(message, time: time, stackTrace: stackTrace);
        break;
      default:
    }
  }
}
