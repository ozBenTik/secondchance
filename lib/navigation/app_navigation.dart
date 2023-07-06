import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_common/widgets/error_page.dart';
import 'package:ui_login/ui_login.dart';
import 'package:ui_lobby/ui_lobby_route.dart';

class AppNavigation {
  static final router = GoRouter(
    initialLocation: AppPages.login.routePath,
    navigatorKey: Get.key,
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, state) => ErrorPage(
      errorTitleKey: 'pageNotFound',
      bottomTextKey: 'toHomePage',
      onButtonClick: () => context.replace('/'),
    ),
    routes: _routes,
    refreshListenable: null,
    //TODO
    redirect: null,
  );

  static List<RouteBase> get _routes => [
        GoRoute(
          name: AppPages.home.routeName,
          path: AppPages.home.routePath,
          builder: (context, state) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
        ),
        UiLobbyRoute.route,
        UiLoginRoute.routes
      ];
}
