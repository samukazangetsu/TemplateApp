import 'package:go_router/go_router.dart';
import 'package:template_app/exemplo/presentation/exemplo_tela_1/exemplo_tela1.dart';
import 'package:template_app/exemplo/presentation/exemplo_tela_2/exemplo_tela2.dart';

class ExemploRoutes {
  static final routes = [
    GoRoute(
      path: '/exemplo_tela1',
      builder: (context, state) => const ExemploTela1(),
    ),
    GoRoute(
      path: '/exemplo_tela2',
      builder: (context, state) => const ExemploTela2(),
    ),
  ];
}
