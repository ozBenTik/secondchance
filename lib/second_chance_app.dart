import 'dart:ui' as ui;

import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ui_common/styles/app_themes.dart';

import 'navigation/app_navigation.dart';

class SecondChanceApp extends StatelessWidget {
  const SecondChanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      textDirection: ui.TextDirection.ltr,
      enableLog: true,
      defaultTransition: Transition.cupertino,

      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      locale: Get.deviceLocale,

      routeInformationParser: AppNavigation.router.routeInformationParser,
      routeInformationProvider: AppNavigation.router.routeInformationProvider,
      routerDelegate: AppNavigation.router.routerDelegate,
      fallbackLocale: const Locale('en'),
    );
  }
}
