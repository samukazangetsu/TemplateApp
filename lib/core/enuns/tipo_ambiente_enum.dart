import 'package:flutter/services.dart';

enum TipoAmbienteEnum {
  mock(''),
  production('https://exemplo.api.com/');

  const TipoAmbienteEnum(this._baseUrl);

  final String _baseUrl;

  static String get baseUrl => switch (appFlavor) {
    'mock' => TipoAmbienteEnum.mock._baseUrl,
    _ => TipoAmbienteEnum.production._baseUrl,
  };
}
