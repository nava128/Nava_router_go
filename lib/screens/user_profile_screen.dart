import 'package:flutter/material.dart';
import 'package:navarouter/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del usuario'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Perfil del usuario con ID'),
            Text(id),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoutes.product.name);
              },
              child: const Text('Producto de usuario'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoutes.login.name);
              },
              child: const Text('Acceso'),
            )
          ],
        ),
      ),
    );
  }
}
