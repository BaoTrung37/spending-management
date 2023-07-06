import 'package:flutter/material.dart';
import 'package:pending_management/presentation/resources/resources.dart';

import 'presentation/pages/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MyApp();
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lý chi tiêu',
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
