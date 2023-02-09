import 'package:flutter_hello_word/app/model/model.dart';
import 'package:flutter_hello_word/app/shared/service/service_api.dart';

abstract class IRepository {
  Future<ActualForecast> listar();
}

class Repository implements IRepository {
  final service = ConsultaDIO();

  @override
  Future<ActualForecast> listar() async {
    final response = await service.consultar();
    final forecast = ActualForecast.fromMap(response);
    print('Passou no repositório');
    print(forecast);
    return forecast;
  }
}
