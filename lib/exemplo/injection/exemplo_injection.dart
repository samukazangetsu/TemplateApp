import 'package:injector/injector.dart';
import 'package:template_app/exemplo/data/datasources/exemplo_datasource.dart';
import 'package:template_app/exemplo/data/exemplo_repository/exemplo_repository.dart';
import 'package:template_app/exemplo/domain/repositories/i_exemplo_repositoy.dart';
import 'package:template_app/exemplo/domain/usecases/get_exemplo_usecase.dart';

class ExemploInjection {
  final Injector injector;

  ExemploInjection(this.injector) {
    _registerDependencies();
  }

  void _registerDependencies() {
    injector.registerSingleton<ExemploDatasource>(
      () => ExemploDatasource(apiManager: injector.get()),
    );
    injector.registerDependency<IExemploRepository>(
      () => ExemploRepository(datasource: injector.get()),
    );
    injector.registerDependency(() => GetExemploUsecase(injector.get()));
  }
}
