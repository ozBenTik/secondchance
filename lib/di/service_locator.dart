import 'package:common_dependencies/common_dependencies.dart';

final locator = GetIt.instance;

Future<void> setupDependencies() async {
  //todo consider to move it to dotenvConfig or smth else.

  await locator.allReady();
}
