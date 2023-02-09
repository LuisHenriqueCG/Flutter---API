import 'package:dio/dio.dart';

abstract class HttpClient {
  Future<Map<String, dynamic>> consultar();
}

class ConsultaDIO implements HttpClient {
  Dio _dio = Dio();

  final String url = 'https://goweather.herokuapp.com/weather/Toledo';

  @override
  Future<Map<String, dynamic>> consultar() async {
    final response = await _dio.get(url);

    print('Passou no service');
    print(response.data);
    return response.data;
  }
}
//'https://goweather.herokuapp.com/weather/Toledo';