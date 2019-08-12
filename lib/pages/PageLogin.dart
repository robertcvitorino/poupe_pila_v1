import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff015249),
              Color(0xff57bc90)
            ] ,
          ),
        ),
        child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:50),
                    child:Image.asset('img/logo_name.png',
                      width: 250,
                      height: 200,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*1,

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,

                      ),
                      SizedBox(
                        width: 290,
                        height: 50,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            focusColor: Colors.white,
                            hintText: 'Login',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 290,
                        height: 50,
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            focusColor: Colors.white,
                            hintText: 'Senha',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
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
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                        height: 25,
                      ),
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
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
