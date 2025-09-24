// This class defines output for log printing depends on app config
import 'dart:async';
import 'package:logger/logger.dart' as lib;

import 'package:flutter/foundation.dart';

class LoggerOutput extends lib.ConsoleOutput {
  final _buffer = StringBuffer();

  Completer? _completer;
  String? version;

  @override
  void output(lib.OutputEvent event) {
    if (kDebugMode) {
      for (var line in event.lines) {
        _buffer.writeln(line);
      }

      if (_completer?.isCompleted != false) {
        _completer = Completer();

        final data = _buffer.toString();
        _buffer.clear();

      }
    }

  }
}
