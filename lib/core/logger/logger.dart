import 'package:flutter/foundation.dart';
import 'package:fridge_tracker/core/logger/logger_output.dart';
import 'package:logger/logger.dart' as lib;

class Logger {
  static final Logger _instance = Logger._();

  late final lib.Logger _logger;

  Logger._() {
    _logger = lib.Logger(
      level: kDebugMode ? lib.Level.all : lib.Level.error,
      output: LoggerOutput(),
      printer: lib.PrettyPrinter(
        //methodCount: 8,
        //errorMethodCount: 8,
        //lineLength: io.stdout.terminalColumns,
        //colors: io.stdout.supportsAnsiEscapes,
        printEmojis: false,
        printTime: true,
      ),
    );
  }

  factory Logger() => _instance;

  void i(Object message) {
    _logger.i(message);
  }

  void d(Object message) {
    _logger.d(message);
  }

  void e(Object message, {Object? error, StackTrace? trace}) {
    _logger.e(message, error: error, stackTrace: trace);
  }
}
