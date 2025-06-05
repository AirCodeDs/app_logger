import 'package:logger/logger.dart';

enum LogType {
  error,
  warning,
  normal,
  info,
}

class AppLogger {
  static AppLogger? _instance;
  final Logger _logger;
  bool _isActive;

  AppLogger._(this._isActive)
      : _logger = Logger(
          printer: PrettyPrinter(
            methodCount: 2,
            errorMethodCount: 8,
            lineLength: 120,
            colors: true,
            printEmojis: true,
            printTime: false,
          ),
        );

  factory AppLogger({bool isActive = true}) {
    _instance ??= AppLogger._(isActive);
    return _instance!;
  }

  void setIsActive(bool isActive) {
    _isActive = isActive;
  }

  // Méthodes raccourcies
  void info(
    dynamic message, {
    String? page,
    DateTime? time,
    StackTrace? stackTrace,
  }) {
    call(
      message,
      logType: LogType.info,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void warning(
    dynamic message, {
    String? page,
    DateTime? time,
    StackTrace? stackTrace,
  }) {
    call(
      message,
      logType: LogType.warning,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void error(
    dynamic message, {
    String? page,
    DateTime? time,
    StackTrace? stackTrace,
  }) {
    call(
      message,
      logType: LogType.error,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  void debug(
    dynamic message, {
    String? page,
    DateTime? time,
    StackTrace? stackTrace,
  }) {
    call(
      message,
      logType: LogType.normal,
      page: page,
      time: time,
      stackTrace: stackTrace,
    );
  }

  // Méthode principale
  void call(
    dynamic message, {
    LogType? logType,
    bool? hidden,
    DateTime? time,
    String? page,
    StackTrace? stackTrace,
  }) {
    if (!_isActive || hidden == true) return;

    final logData = {
      "page": page,
      "message": message,
    };

    switch (logType) {
      case LogType.error:
        _logger.e(logData, stackTrace: stackTrace);
        break;
      case LogType.warning:
        _logger.w(logData, stackTrace: stackTrace);
        break;
      case LogType.info:
        _logger.i(logData);
        break;
      case LogType.normal:
        _logger.t(logData);
        break;
      default:
        _logger.t(logData);
        break;
    }
  }
}
