import 'package:bazar/pages/Livraison.dart';
import 'package:flutter/material.dart';
import 'package:bazar/pages/Categories.dart';
import 'package:bazar/pages/CreateAccount.dart';
import 'package:bazar/pages/Exemplaires.dart';
import 'package:bazar/pages/Favorites.dart';
import 'package:bazar/pages/Forgot.dart';
import 'package:bazar/pages/InsertNewPassword.dart';
import 'package:bazar/pages/MonCompte.dart';
import 'package:bazar/pages/Panier.dart';
import 'package:bazar/pages/Profil.dart';
import 'package:bazar/pages/ScreensControl.dart';
import 'package:bazar/pages/SearchPage.dart';
import 'package:bazar/pages/SignIn.dart';
import 'package:bazar/pages/welcome3.dart';
import 'package:bazar/pages/welcoome2.dart';
import 'package:bazar/pages/Aide.dart';
import 'package:bazar/pages/welcome.dart';
import 'package:bazar/pages/AdminPageCommandes.dart';
import 'package:bazar/pages/AdminPage.dart';
import 'package:bazar/pages/AdminPagePropositions.dart';
import 'package:bazar/pages/PhotoProposition.dart';
import 'package:bazar/pages/UnExemplaire.dart';
import 'package:bazar/pages/DeExemplaire.dart';
import 'package:bazar/pages/Proposition.dart';
import 'package:bazar/pages/Auteur.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => Welcome(),
        "/welcoome2": (context) => Second(),
        "/welcome3": (context) => Third(),
        "/SignIn": (context) => SignIn(),
        "/Forgot": (context) => Forgot(),
        "/CreateAccount": (context) => CreateAccount(),
        "/Categories": (context) => Categories(),
        "/MonCompte": (context) => MonCompte(),
        "/ScreensControl": (context) => ScreensControl(),
        "/Profil": (context) => Profil(),
        "/Exemplaires": (context) => Exemplaires(),
        "/Panier": (context) => Panier(),
        "/SearchPage": (context) => SearchPage(),
        "/InsertNewPassword": (context) => InsertNewPassword(),
        "/Favorites": (context) => Favorites(),
        "/Aide": (context) => Aide(),
        "/AdminPageCommandes": (context) => AdminPageCommandes(),
        "/AdminPage": (context) => AdminPage(),
        "/AdminPagePropositions": (context) => AdminPagePropositions(),
        "/Auteur": (context) => Auteur(),
        "/UnExemplaire": ((context) => UnExemplaire()),
        "/DeExemplaire": ((context) => DeExemplaire()),
        "/Livraison": (context) => Livraison(),
        "/Proposition": (context) => Proposition(),
        "/PhotoProposition": (context) => PhotoProposition(),
        // "VendeurPage": (context) => VendeurPage(),
      },
    );
  }
}
