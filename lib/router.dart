import 'package:auto_route/auto_route.dart';
import 'package:fridge_tracker/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,PageRoute')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginPageRoute.page, initial: true),

    AutoRoute(
      page: MainPageRoute.page,
      children: [
        AutoRoute(page: HomePageRoute.page),
        AutoRoute(page: ProfilePageRoute.page),
        AutoRoute(page: ExpiredItemsPageRoute.page),
        AutoRoute(page: AddItemPageRoute.page),
      ],
    ),
  ];
}

