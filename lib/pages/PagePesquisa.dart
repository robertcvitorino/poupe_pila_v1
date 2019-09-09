import 'package:flutter/material.dart';
import 'package:poupe_pilla_v1/pages/PagePesquisaProduto.dart';
import 'package:poupe_pilla_v1/src/Api.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PagePesquisa extends StatefulWidget {
  @override
  _PagePesquisaState createState() => _PagePesquisaState();
}


class _PagePesquisaState extends State<PagePesquisa> {
  @override

  String _leitura="";
  String _codigo='';

  Future _scanearCodigo()async{
    _leitura = await FlutterBarcodeScanner.scanBarcode('#004297', 'Cancelar', false);

    setState(() {
      _codigo=_leitura;
    });

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context)=>PagePesquisaProduto(_codigo)
        )
    );
  }





  final _pesquisa =TextField(
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              focusColor: Colors.white,
              hintText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
  );
  final _textIntro =Text('Informe nome do produto',
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white
  ),);
  final _text =Text('Ou se preferir',
    style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),);



  Widget build(BuildContext context) {



    return Container(
        padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              SizedBox(
                child: _textIntro,
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 290,
                  height: 50,
                  child: _pesquisa,
                ),
                SizedBox(height: 15,),
                SizedBox(

                  child: _text,
                ),
                SizedBox(height: 15,),
                  Row(
                         children: <Widget>[
                           SizedBox(
                             child: GestureDetector(
                               child: Image.asset('img/ean.png',
                                 width: 150,
                                 height: 100,
                               ),
                               onTap: (){
                                 _scanearCodigo();
                               },
                             ),
                           ),
                           SizedBox(width: 15,),

                           SizedBox(
                             child: GestureDetector(
                               child: Image.asset('img/car.png',
                                 width: 150,
                                 height: 100,
                               ),
                               onTap: (){},
                             ),
                           ),



                         ],
                       ),

              ],
         ),
      );

  }
}
