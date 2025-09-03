import 'package:dartz/dartz.dart';
import 'package:pop_network/pop_network.dart';
import 'package:template_app/core/exceptions/api_error.dart';
import 'package:template_app/core/exceptions/i_error.dart';
import 'package:template_app/core/exceptions/internal_error.dart';
import 'package:template_app/exemplo/data/datasources/exemplo_datasource.dart';
import 'package:template_app/exemplo/data/models/exemplo_model.dart';
import 'package:template_app/exemplo/domain/entities/exemplo_entity.dart';
import 'package:template_app/exemplo/domain/repositories/i_exemplo_repositoy.dart';
import 'package:template_app/utils/mixins/decode_model_mixin.dart';

class ExemploRepository with DecodeModelMixin implements IExemploRepository {
  final ExemploDatasource _datasource;

  ExemploRepository({required ExemploDatasource datasource})
    : _datasource = datasource;

  @override
  Future<Either<IError, ExemploEntity>> getExemplo() async {
    final result = await _datasource.getExemplo();
    return tryDecode<Either<IError, ExemploEntity>>(
      () {
        if (result.isSuccessful) {
          return Right(ExemploModel.fromJson(result.data));
        }
        return Left(ApiError.fromJson(result.data));
      },
      orElse: (error) => Left(InternalError('Failed to decode ExemploEntity')),
    );
  }
}
