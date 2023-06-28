
/*
Aprendendo a utilizar o dart converter para transformar arquivos json
*/

import 'dart:convert';

void main (){

// json basico
 final jsonCEP = '''
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado impar",
    "bairro":"Sé",
    "localidade": "São Paulo", 
    "uf": "SP", 
    "ibge": "3550308",
    "gia": "1004", 
    "ddd": "87", 
    "siafi": "7107"
  }
'''; 

final jsondados = json.decode(jsonCEP); // o decode transforma nosso json em um map de chave e valor. 

print(jsondados); // posso printar todos as informações do meu mapa

print(jsondados['uf']); // ou posso acessar uma chave especifica e mandar apenas uma informação. 


}