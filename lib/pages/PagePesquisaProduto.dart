import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:poupe_pilla_v1/src/Api.dart';
import 'package:http/http.dart' as http;



class PagePesquisaProduto extends StatefulWidget {
  String eanProduto;

  PagePesquisaProduto(this.eanProduto);


  @override
  _PagePesquisaProdutoState createState() => _PagePesquisaProdutoState();
}





class _PagePesquisaProdutoState extends State<PagePesquisaProduto> {


  int qtdProduto=1;
  String _ean,_produto,_preco,_estabelecimento,_bairro,_data="";



  _pesquisaProduto() async{
    http.Response response;
    String barcode = widget.eanProduto;

    response= await http.get(
         "https://app-poupe.herokuapp.com/api/produtos/$barcode"
    );

    Map<String, dynamic> retornoProduto = json.decode(response.body);
    String ean =retornoProduto["ean"];
    String nome =retornoProduto["nome"];
    String preco=retornoProduto["preco"].toString();
    String estabelecimento =retornoProduto["estabelecimento"];
    String bairro =retornoProduto["bairro"];
    String data = retornoProduto["data"].toString();

    
    print("Ean:$ean  Produto: $nome  Preço:$preco  Supermercado:$estabelecimento");

    setState(() {
      _ean=ean;
      _produto=nome;
      _preco=preco;
      _estabelecimento=estabelecimento;
      _bairro=bairro;
      _data=data;

    });


  }

  @override
  void initState() {
    _pesquisaProduto();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produto  Pesquisado"),
        backgroundColor: Color(0xff309E60),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: qtdProduto,
            separatorBuilder: (context,index)=>Divider(height: 2,color:Colors.red ,),
            itemBuilder: (context,index){

            return Column(
              children: <Widget>[
                Container(
                  height: 250,
                  color: Colors.black38,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("$_produto",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                     SizedBox(height: 170,),

                     Text("Preço: $_preco",
                       style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: Colors.lightGreenAccent
                       ),
                     ),

                     Text("Ultima atualização: $_data",
                       style: TextStyle(
                           fontSize: 12,
                           fontWeight: FontWeight.w200,
                           color: Colors.white
                       ),
                     ),



                    ],
                  ),
                ),
                ListTile(
                  title: Text("$_estabelecimento",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),
                  ),
                  subtitle: Text(" $_bairro"),

                )
              ],


            );


            }
        ),



      ),

















      /*
      Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Pesquisa"),
              FlatButton(
                  onPressed: _pesquisaProduto,

                  child:Text(""
                      "Ean: $_ean"
                      "Nome: $_produto"
                      "Preço: $_preco"
                      "Estabelecimento: $_estabelecimento"
                      "Bairro: $_bairro"
                      "Data: $_data"
                      "pesquisa"))

            ],
          )


        ),
      ),*/
      
    );

  }
}
