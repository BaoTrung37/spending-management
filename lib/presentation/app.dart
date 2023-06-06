import 'package:flutter/material.dart';
import 'package:pending_management/presentation/app_router.dart';
import 'package:pending_management/presentation/resources/resources.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Name',
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
