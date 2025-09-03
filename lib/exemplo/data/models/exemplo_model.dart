import 'package:template_app/exemplo/domain/entities/exemplo_entity.dart';

extension type ExemploModel(ExemploEntity entity) implements ExemploEntity {
  ExemploModel.fromJson(Map<String, dynamic> json)
    : entity = ExemploEntity(exemploCampo: json['exemploCampo']);
}
