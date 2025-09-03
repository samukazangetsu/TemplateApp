import 'package:dartz/dartz.dart';
import 'package:template_app/core/exceptions/i_error.dart';
import 'package:template_app/exemplo/domain/entities/exemplo_entity.dart';
import 'package:template_app/exemplo/domain/repositories/i_exemplo_repositoy.dart';

class GetExemploUsecase {
  final IExemploRepository _exemploRepositoy;

  GetExemploUsecase(this._exemploRepositoy);

  Future<Either<IError, ExemploEntity>> call() =>
      _exemploRepositoy.getExemplo();
}
