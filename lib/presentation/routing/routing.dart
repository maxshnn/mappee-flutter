import 'package:auto_route/auto_route.dart';

import 'routing.gr.dart';

@AutoRouterConfig()
class AppRoute extends $AppRoute {
  @override
  List<AutoRoute> get routes => [
        CupertinoRoute(
          page: AuthRoute.page,
          path: "/auth",
          title: (context, data) => 'Авторизация',
        ),
        CupertinoRoute(
          page: HomeRoute.page,
          path: "/",
          initial: true,
          children: [
            CupertinoRoute(
              page: FeedRoute.page,
              path: "feed",
              title: (context, data) => 'Лента',
            ),
            CupertinoRoute(
              page: MapRoute.page,
              path: "map",
              title: (context, data) => 'Карта',
            ),
            CupertinoRoute(
              page: FavoriteRoute.page,
              path: "favorite",
              title: (context, data) => 'Избранное',
            ),
            CupertinoRoute(
              page: ProfileRoute.page,
              path: "profile",
              title: (context, data) => 'Профиль',
            ),
          ],
        ),
      ];
}
