import 'package:logger/logger.dart';

enum LogType {
  error,
  warning,
  normal,
  info,
}

class AppLogger {
  static AppLogger? _instance;
  bool _isActive;

  AppLogger._(this._isActive);

  factory AppLogger({bool isActive = true}) {
    _instance ??= AppLogger._(isActive);
    return _instance!;
  }

  void setIsActive(bool isActive) {
    _isActive = isActive;
  }

  // Shortcut methods
  void info(dynamic message, {String? page, DateTime? time, StackTrace? stackTrace}) {
    call(
      message,
      logType: LogType.info,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void warning(dynamic message, {String? page, DateTime? time, StackTrace? stackTrace}) {
    call(
      message,
      logType: LogType.warning,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void error(dynamic message, {String? page, DateTime? time, StackTrace? stackTrace}) {
    call(
      message,
      logType: LogType.error,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void debug(dynamic message, {String? page, DateTime? time, StackTrace? stackTrace}) {
    call(
      message,
      logType: LogType.normal,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  // Generic logger call
  void call(
    dynamic message, {
    LogType? logType,
    bool? hidden,
    DateTime? time,
    Object? error,
    String? page,
    StackTrace? stackTrace,
  }) {
    if (!_isActive || hidden == true) return;

    final logData = {
      "page": page,
      "message": message,
    };

    final logger = Logger();

    switch (logType) {
      case LogType.error:
        logger.e(logData, time: time, stackTrace: stackTrace);
        break;
      case LogType.warning:
        logger.w(logData, time: time, stackTrace: stackTrace);
        break;
      case LogType.info:
        logger.i(logData, time: time, stackTrace: stackTrace);
        break;
      case LogType.normal:
        logger.t(logData, time: time, stackTrace: stackTrace);
        break;
      default:
        logger.t(logData, time: time, stackTrace: stackTrace);
        break;
    }
  }
}
