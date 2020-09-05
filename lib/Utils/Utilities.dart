/// Utility class for project-wide use
class Utilities {
  /// Whether or not logs are enabled, defaulted to [false]
  static bool logEnabled = false;

  /// Set logs to [enabled]
  static void logIsEnabled(bool enabled) => logEnabled = enabled;

  /// Print a log in the format [tag]: [message]
  static void LOG(String tag, String message) {
    if (!logEnabled) return;

    print('$tag: $message');
  }
}
