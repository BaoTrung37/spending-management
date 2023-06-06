import 'package:flutter/material.dart';
import 'package:pending_management/injection/dependencies.dart';
import 'package:pending_management/nstack/nstack.dart';
import 'package:pending_management/presentation/app.dart';

import 'presentation/app_flavor.dart';

void mainCommon(AppFlavor flavor) async {
  await DependencyManager.inject(flavor);
  runApp(NStackWidget(child: const App()));
}
