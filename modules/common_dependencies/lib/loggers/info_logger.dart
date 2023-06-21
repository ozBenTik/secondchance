import 'package:common_dependencies/common_dependencies.dart';

/// This class will be used to log application local logs and to send logs to Datadog.
class InfoLogger {
  static void info({String? tag, required String msg}) {
    Fimber.i("$tag - $msg");
  }

  static void debug({String? tag, required String msg}) {
    Fimber.d("$tag - $msg");
  }

  static void warn({String? tag, required String msg}) {
    Fimber.w("$tag - $msg");
  }
}
