import 'package:talker_flutter/talker_flutter.dart';

class AppLogger {
  static final logger = TalkerFlutter.init(
    settings: TalkerSettings(
      enabled: enable,
      useHistory: false,
      colors: {
        TalkerLogType.warning.key: AnsiPen()..yellow(bold: true),
        TalkerLogType.debug.key: AnsiPen()..green(bold: true),
        TalkerLogType.error.key: AnsiPen()..red(bold: true),
      },
      titles: {
        TalkerLogType.warning.key: 'W',
        TalkerLogType.debug.key: 'D',
        TalkerLogType.error.key: 'E',
      },
    ),
  );

  static bool enable = true;

  static void d(dynamic message) {
    if (enable) {
      logger.debug(message);
    }
  }

  static void w(dynamic message) {
    if (enable) {
      logger.warning(message);
    }
  }

  static void e(dynamic message, {Object? error, StackTrace? stackTrace}) {
    if (enable) {
      logger.error(message, error, stackTrace);
    }
  }
}
