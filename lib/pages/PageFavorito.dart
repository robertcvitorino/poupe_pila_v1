import 'package:flutter/material.dart';


class PageFavorito extends StatefulWidget {
  @override
  _PageFavoritoState createState() => _PageFavoritoState();
}

class _PageFavoritoState extends State<PageFavorito> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorito',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
