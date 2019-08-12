import 'package:flutter/material.dart';

class PagePesquisa extends StatefulWidget {
  @override
  _PagePesquisaState createState() => _PagePesquisaState();
}


class _PagePesquisaState extends State<PagePesquisa> {
  @override

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
  final _textIntro =Text('Informe nome do produto');



  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
          child: Column(
              children: <Widget>[

              SizedBox(height: 150,),
              SizedBox(
                child: _textIntro,
              ),
              SizedBox(height: 20,),
              SizedBox(
                 width: 290,
                 height: 50,
                     child: _pesquisa,
                      ),
                SizedBox(height: 30,),
                Expanded(

                       child:  Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           SizedBox(
                             child: GestureDetector(
                               child: Image.asset('img/barcode.png',
                                 width: 150,
                                 height: 100,
                               ),
                               onTap: (){
                               },
                             ),
                           ),

                           SizedBox(
                             child: GestureDetector(
                               child: Image.asset('img/carrinho.png',
                                 width: 150,
                                 height: 100,
                               ),
                               onTap: (){

                                 Navigator.pushNamed(context,"/pageCarrinho" );
                               },
                             ),
                           ),


                         ],
                       ),
              ),
              ],
         ),
      ),
    );
  }
}
