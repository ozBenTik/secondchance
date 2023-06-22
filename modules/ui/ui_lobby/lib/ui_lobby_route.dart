import 'package:common_dependencies/common_dependencies.dart';
import 'package:models/routes/routes_utils.dart';

import 'src/lobby/lobby_page.dart';

class UiLobbyRoute {
  static GoRoute get routes => GoRoute(
        parentNavigatorKey: Get.key,
        name: AppPages.lobby.routeName,
        path: AppPages.lobby.routePath,
        builder: (context, state) {
          return LobbyPage();
        },
      );
}
