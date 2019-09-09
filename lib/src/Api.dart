import 'package:flutter/rendering.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:poupe_pilla_v1/src/Model/Produto.dart';
const URL_BASE= "https://app-poupe.herokuapp.com/api/produtos/";


class Api{

    pesquisar(String pesquisa)async{
    
    http.Response response = await http.get(
        URL_BASE + "$pesquisa"
    );

    GettApi(){
      return URL_BASE;
    }




    if(response.statusCode==200){
      print("resultado:"+ response.body );
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Produto> produtos = dadosJson["$pesquisa"].map<Produto>
              ((map){
              return Produto.fromJason(map);
           }
        ).toList();
      for( var produto  in produtos ){
          print("nome:   "+ produto.nome);

      }




    }else{
      print('erro: '+ response.statusCode.toString());

      
    }

    
  }
}