import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:go_router/go_router.dart';

import 'route_path.dart';
import 'routes.dart';

final routerConfig = GoRouter(
  routes: $appRoutes,
  initialLocation: RoutePath.splash,
  errorBuilder: (c, s) => ErrorRoute(error: s.error!).build(c, s),
  observers: [
    // logger.setRouteObserver(),
    FirebaseAnalyticsObserver(
      analytics: FirebaseAnalytics.instance,
    ),
  ],
);
