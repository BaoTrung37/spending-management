import 'package:pending_management/presentation/app_flavor.dart';
import 'package:pending_management/presentation/routes/app_router.dart';

import 'injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor flavor) async {
    injector.registerLazySingleton<AppFlavor>(() => flavor);
    injector.registerLazySingleton<AppRouter>(() => AppRouter());
  }
}
