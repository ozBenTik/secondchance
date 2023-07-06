import 'package:common_dependencies/common_dependencies.dart';
import 'package:models/routes/routes_utils.dart';
import 'package:ui_login/src/login_page.dart';

class UiLoginRoute {
  static GoRoute get routes => GoRoute(
        parentNavigatorKey: Get.key,
        name: AppPages.login.routeName,
        path: AppPages.login.routePath,
        builder: (context, state) {
          return const LoginPage();
        },
      );
}
