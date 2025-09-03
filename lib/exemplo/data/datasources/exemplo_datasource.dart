import 'package:pop_network/pop_network.dart';

class ExemploDatasource {
  final IApiManager _apiManager;
  ExemploDatasource({required IApiManager apiManager})
    : _apiManager = apiManager;

  Future<Response<dynamic>> getExemplo() async => await _apiManager.get('');
}
