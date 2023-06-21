import 'package:common_dependencies/common_dependencies.dart';

class ErrorLogger {
  static void report(String tag, String err) {
    Fimber.e('$tag, ERROR: $err');
  }
}