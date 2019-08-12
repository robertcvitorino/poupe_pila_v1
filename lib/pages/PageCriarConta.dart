import 'package:flutter/material.dart';


class PageCriarConta extends StatefulWidget {
  @override
  _PageCriarContaState createState() => _PageCriarContaState();
}

class _PageCriarContaState extends State<PageCriarConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('img/logo_nome.png',
              height: 30,
              width: 120,
            ),
          ],
        ),
        backgroundColor: Color(0xff015249),
      ),
      body: Container(
        child: Text('Criar conta'),
      ),

    );
  }
}
