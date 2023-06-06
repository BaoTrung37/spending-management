import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pending_management/injection/injector.dart';
import 'package:pending_management/presentation/resources/resources.dart';
import 'package:pending_management/presentation/routes/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = injector.get<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(Brightness.light),
      darkTheme: getAppTheme(Brightness.dark),
      title: 'Project Name',
      builder: (c, widget) {
        if (widget == null) return const SizedBox();

        // return NStackWidget(
        //   child: widget,
        // );
        return widget;
      },
      routerDelegate: AutoRouterDelegate(
        appRouter,
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
