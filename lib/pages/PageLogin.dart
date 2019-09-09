import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff44DA74),
        body: Container(
            /*decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors:
                    [
                      Color(0xff44DA74),
                      Color(0xff309E60),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter


                )
            ),
              */
            padding: EdgeInsets.all(15),
            child:  SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 25)),

                  SizedBox(
                    height: 200,
                    width: 120,
                    child: Image.asset('img/logo_.png'),
                  ),
                  Text('Poupe Pila',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),

                  SizedBox(height: 40,),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: buildTextField("Email"),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: buildTextField("Senha"),
                  ),

                  SizedBox(height: 5,),





                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        buildRecuperarSenha()
                      ],
                    ),
                  ),




                  SizedBox(height: 20,),
                  SizedBox(
                    width: 200,
                    height: 45,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, "/pagePrincipal");
                      },
                      child: Text('Login'),
                      color:  Color(0xff015249),
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Se não tem conta ?"),
                                SizedBox(
                                  height: 30,
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      onPressed: (){
                                        Navigator.pushNamed(context, "/pageCreate");
                                      },
                                      child: Text(
                                        'Criar conta',
                                        style: TextStyle(
                                            fontSize: 12
                                        ),
                                      )
                                  ),
                                ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
Widget buildTextField(String hintText){
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 16
      ),

      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50)
      ),
      prefixIcon: hintText =="Email"? Icon(Icons.mail_outline):Icon(Icons.lock),
    ),
    obscureText: hintText =="Senha" ? true :false ,

  );
}







Widget buildRecuperarSenha(){
  return SizedBox(
    height: 30,
    child: Padding(
      padding: EdgeInsets.only(left: 180),
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          onPressed: (){},
          child: Text(
            'Recuperar Senha',
            style: TextStyle(
                fontSize: 10
            ),
          )
      ),
    ),
  );

}