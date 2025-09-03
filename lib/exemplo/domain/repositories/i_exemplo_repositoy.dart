import 'package:dartz/dartz.dart';
import 'package:template_app/core/exceptions/i_error.dart';
import 'package:template_app/exemplo/domain/entities/exemplo_entity.dart';

abstract class IExemploRepository {
  Future<Either<IError, ExemploEntity>> getExemplo();
}
