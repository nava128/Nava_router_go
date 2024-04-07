/// Represents the app routes and their paths.
enum AppRoutes {
  profile(
    name: 'profile',
    path: '/user/profile/:id',
  ),

  profileWithoutId(
    name: 'profile_without_id',
    path: '/user/profile',
  ),
  home(
    name: 'home',
    path: '/home',
  ),

  login(
    name: 'login',
    path: '/login',
  ),
  product(
    name: 'product',
    path: '/product',
  );

  const AppRoutes({
    required this.name,
    required this.path,
  });

  /// Represents the route name
  ///
  /// Example: `AppRoutes.splash.name`
  /// Returns: 'splash'
  final String name;

  /// Represents the route path
  ///
  /// Example: `AppRoutes.splash.path`
  /// Returns: '/splash'
  final String path;

  @override
  String toString() => name;
}
