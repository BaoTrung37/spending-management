import 'package:pending_management/injection/data_module.dart';
import 'package:pending_management/presentation/app_flavor.dart';
import 'package:pending_management/presentation/feature/profile/profile_module.dart';

import 'injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor flavor) async {
    injector.registerLazySingleton<AppFlavor>(() => flavor);

    // App modules
    await DataModule.inject();

    // Feature modules
    await ProfileModule.inject();
  }
}
