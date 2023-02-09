import 'package:dio/dio.dart';
import 'package:flutter_hello_word/app/model/model.dart';
import 'package:flutter_hello_word/app/repository/repository.dart';

class Controller {
  ActualForecast? actualForecast;

  int cliques = 0;
  void fetch() async {
    final repository = Repository();
    final response = await repository.listar();

    actualForecast = response;

    print('Passou no Controller');
    print(actualForecast);
  }
}
