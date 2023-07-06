import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pending_management/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Sets screen orientation only Portrait
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // void startApp() {
  runApp(
    const App(),
  );
  // }

  // runZonedGuarded(() {
  //   startApp();
  // }, (Object error, StackTrace stackTrace) {});
}
