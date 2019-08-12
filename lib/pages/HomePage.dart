import 'package:flutter/material.dart';
import 'package:poupe_pilla_v1/pages/PageCarrinho.dart';
import 'package:poupe_pilla_v1/pages/PageFavorito.dart';
import 'package:poupe_pilla_v1/pages/PagePesquisa.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual=0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas =[
      PagePesquisa(),
      PageFavorito(),
      PageCarrinho()
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Poupe Pila'),
        backgroundColor: Color(0xff015249),
        actions: <Widget>[

          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}
          ),

        ],
        iconTheme: IconThemeData(
          color: Colors.white,
          opacity: 0.5,
        ),
        automaticallyImplyLeading: false,
      ),














      body: Container(
        color: Color(0xff57bc90),
        child: telas[_indiceAtual]
      ),


























      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,

        onTap: (indice){
          setState(() {
            _indiceAtual=indice;
          });
        },
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              title: Text('Pesquisa'),
                backgroundColor: Color(0xff015249),
                icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
                title: Text('Favorito'),
                backgroundColor: Color(0xff015249),
                icon: Icon(Icons.star_border)
            ),
            BottomNavigationBarItem(
                title: Text('Carrinho'),
                backgroundColor: Color(0xff015249),
                icon: Icon(Icons.shopping_cart)
            ),
          ]

      ),



    );
  }
}
