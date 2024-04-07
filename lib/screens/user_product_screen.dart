import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navarouter/routes/app_routes.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto de usuario'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Regresar'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.product.name);
            },
            child: const Text('Producto'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.home.name);
            },
            child: const Text('Inicio'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(
                AppRoutes.profileWithoutId.name,
              );
            },
            child: const Text('Perfil sin identificación'),
          ),
        ],
      ),
    );
  }
}
