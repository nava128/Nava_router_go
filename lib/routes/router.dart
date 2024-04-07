import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:navarouter/routes/app_routes.dart';
// import 'package:gorouter/routes/route_constant.dart';
import 'package:navarouter/screens/error_screen.dart';
import 'package:navarouter/screens/home_screen.dart';
import 'package:navarouter/screens/login_screen.dart';
import 'package:navarouter/screens/user_product_screen.dart';
import 'package:navarouter/screens/user_profile_screen.dart';

GoRouter router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  initialLocation: AppRoutes.home.path,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.home.path,
      name: AppRoutes.home.name,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.login.path,
      name: AppRoutes.login.name,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.profile.path,
      name: AppRoutes.profile.name,
      builder: (context, state) {
        return UserProfileScreen(id: state.pathParameters['id']!);
      },
    ),
    GoRoute(
        path: AppRoutes.profileWithoutId.path,
        name: AppRoutes.profileWithoutId.name,
        redirect: (context, state) {
          return state.namedLocation(AppRoutes.profile.name,
              pathParameters: {'id': '1'});
        }),
    GoRoute(
      path: AppRoutes.product.path,
      name: AppRoutes.product.name,
      builder: (context, state) {
        return const UserProductScreen();
      },
    ),
  ],
  redirect: (context, state) {
    bool isAuthenticated = false;
    // ignore: dead_code
    if (!isAuthenticated && state.path == '/') {
      return state.namedLocation(AppRoutes.login.name);
    } else {
      return null;
    }
  },
  errorBuilder: (context, state) => const ErrorScreen(),
);
