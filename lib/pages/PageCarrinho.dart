import 'package:flutter/material.dart';


class PageCarrinho extends StatefulWidget {
  @override
  _PageCarrinhoState createState() => _PageCarrinhoState();
}

class _PageCarrinhoState extends State<PageCarrinho> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Carrinho',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}
