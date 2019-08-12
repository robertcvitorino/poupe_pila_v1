import 'package:flutter/material.dart';



class PageInicial extends StatefulWidget {
  @override
  _PageInicialState createState() => _PageInicialState();
}
class _PageInicialState extends State<PageInicial> {
  @override
  Widget build(BuildContext context) {

    final _logoImg =Image.asset('img/somente_logo.png');

    final _loginBotoa =FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      onPressed: (){
        Navigator.pushNamed(context, "/pagelogin");
      },
      child: Text('Login',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
      color:  Color(0xff015249),
      textColor: Colors.white,
    );

    final _criaConta = FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      onPressed: (){
        Navigator.pushNamed(context, "/pageCreate");
      },
      child: Text('Criar Conta',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
      color:  Color(0xff015249),
      textColor: Colors.white,
    );



    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff015249),
                Color(0xff57bc90)
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  width: 250,
                  child: _logoImg,
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: _loginBotoa,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: _criaConta,
                )
              ],
            ),
          )
      ),

    );
  }
}
