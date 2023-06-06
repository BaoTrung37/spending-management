import 'package:flutter/material.dart';
import 'package:pending_management/injection/dependencies.dart';
import 'package:pending_management/presentation/app.dart';

import 'presentation/app_flavor.dart';

// ignore: avoid_void_async
void mainCommon(AppFlavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyManager.inject(flavor);
  runApp(const App());
}
