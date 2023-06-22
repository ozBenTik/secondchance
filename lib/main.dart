import 'dart:async';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'di/service_locator.dart';
import 'second_chance_app.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    var dTree = DebugTree(useColors: true);
    Fimber.plantTree(dTree);

    await setupDependencies();

    runApp(const SecondChanceApp());
  }, (error, stack) {
    ErrorLogger.report("ERROR: $error", "STACK_TRACE: $stack");
  });
}