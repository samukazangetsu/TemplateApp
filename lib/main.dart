import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:pop_network/pop_network.dart';
import 'package:template_app/core/enuns/tipo_ambiente_enum.dart';
import 'package:template_app/exemplo/injection/exemplo_injection.dart';
import 'package:template_app/router/go_router.dart';

void main() async {
  final injector = Injector();
  injector.registerSingleton<IApiManager>(
    () => ApiManager(
      baseUrl: TipoAmbienteEnum.baseUrl,
      interceptors: [
        PopErrorInterceptor(),
        PopNetworkLogInterceptor(showRequestHeader: true),
      ],
    ),
  );
  ExemploInjection(injector);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp.router(title: 'Flutter Template App', routerConfig: router);
}
