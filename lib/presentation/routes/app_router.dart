import 'package:auto_route/auto_route.dart';
import 'package:pending_management/presentation/pages/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // @override
  // RouteType get routeType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page),
      ];
}
