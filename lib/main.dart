import 'package:flutter/material.dart';
import 'package:navarouter/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 110, 172, 16),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 175, 28, 153),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 37, 46, 43),
      ),
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routerDelegate: AppRouter().router.routerDelegate,
      // routeInformationProvider: AppRouter().router.routeInformationProvider,
      routerConfig: router,
      // home: const HomeScreen(),
    );
  }
}
