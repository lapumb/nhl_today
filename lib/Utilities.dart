class Utilities {
  // logs are disabled by default
  static bool logEnabled = false;

  static void logIsEnabled(bool enabled) => logEnabled = enabled; 

  static void LOG(String tag, String message) {
    if (!logEnabled) {
      return;
    }

    print('$tag: $message');
  }
}
