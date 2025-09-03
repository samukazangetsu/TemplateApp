import 'package:go_router/go_router.dart';
import 'package:template_app/exemplo/router/exemplo_router.dart';
import 'package:template_app/home/presentation/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(path: '/exemplo', routes: ExemploRoutes.routes),
        // GoRoute(path: '/exemplo_2', routes: ExemplosRoutes.routes),
      ],
    ),
  ],
);
