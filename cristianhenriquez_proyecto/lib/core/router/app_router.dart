import 'package:cristianhenriquez_proyecto/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const HomePage();
        }),
  ],
);
