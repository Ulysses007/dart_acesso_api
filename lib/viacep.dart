/*
Consumindo um serviço rest http basico com o package http
*/

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

Future<void> main()  async {
/*
O Metodo get é responsavel por buscar os dados como exemplificado abaixo

*/
  final resultJson =
      await get(Uri.parse('https://viacep.com.br/ws/01001000/json/'));

  if (resultJson.statusCode != 200) {
    // Nossa requisição pode retornar um sucesso ou erro, esse if é para fazermos esse tratamento
    print('Erro fatal');
  } else {
    print(resultJson.body); // dados do sjson
    print(resultJson.statusCode); // reposta da API
    print(resultJson.request); // requisição feita
    print(resultJson.headers); // headrs de resporta da requisição

    final dadosJsonConvertidos = json.decode(resultJson
        .body); // aqui estamos convertendo o json em um mapa de chave valor

    print(
        resultJson); // esse print irá mostrar o json puro sem nenhuma coversao

    print(dadosJsonConvertidos); // aqui o json já foi convertido para um

    print(dadosJsonConvertidos[
        'cep']); // aqui estou acessando um atributo do json, posso fazer isso para qualquer objeto

  }
}
