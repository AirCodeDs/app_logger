import 'package:flutter/foundation.dart';

enum Mode { release, profil, debug, production }

class AppMode {
  static call() {
    if (kDebugMode) {
      return Mode.debug;
    } else if (kProfileMode) {
      return Mode.profil;
    } else if (kReleaseMode) {
      return Mode.release;
    } else {
      return Mode.production;
    }
  }
}
