import 'package:flutter/material.dart';
import 'package:poupe_pilla_v1/pages/HomePage.dart';
import 'package:poupe_pilla_v1/pages/PageCarrinho.dart';
import 'package:poupe_pilla_v1/pages/PageCriarConta.dart';
import 'package:poupe_pilla_v1/pages/PageFavorito.dart';
import 'package:poupe_pilla_v1/pages/PageLogin.dart';




void main(){
  runApp(MaterialApp(
    home: PageLogin(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/pagelogin" :(context)=> PageLogin(),
      "/pageCreate":(context)=>PageCriarConta(),
      "/pagePrincipal" :(context) =>HomePage(),
      "/pageCarrinho" :(context) =>PageCarrinho(),
      "/pageFavorito" :(context) =>PageFavorito(),


    },
  ));


}