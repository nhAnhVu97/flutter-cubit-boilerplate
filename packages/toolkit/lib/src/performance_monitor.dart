import 'package:flutter/foundation.dart';
import 'package:toolkit/toolkit.dart';

class PerformanceMonitor {
  static final Map<String, Stopwatch> _traces = {};

  /// Start measuring a trace
  static void startTrace(String traceName) {
    if (_traces.containsKey(traceName)) {
      AppLogger.w('Trace "$traceName" is already running');
      return;
    }

    _traces[traceName] = Stopwatch()..start();
  }

  /// Stop measuring a trace and get its duration
  static Duration? stopTrace(String traceName) {
    final trace = _traces.remove(traceName);
    if (trace == null) {
      AppLogger.w('No trace found with name "$traceName"');
      return null;
    }

    trace.stop();
    final duration = trace.elapsed;

    if (kDebugMode) {
      AppLogger.d(
        'Trace "$traceName" completed in ${duration.inMilliseconds}ms',
      );
    }

    return duration;
  }
}
