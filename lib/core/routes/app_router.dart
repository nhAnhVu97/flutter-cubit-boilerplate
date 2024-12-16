import 'package:auto_route/auto_route.dart';
import 'package:boilerplate_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppRoute.page, initial: true, children: [
          AutoRoute(page: SplashRoute.page, path: 'splash', initial: true),
          AutoRoute(page: SignInRoute.page, path: 'sign-in'),
          AutoRoute(page: SignUpRoute.page, path: 'sign-up'),
        ])
      ];
}
