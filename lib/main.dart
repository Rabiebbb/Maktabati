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
import 'package:bazar/pages/AdminPage.dart';
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
        "/AdminPage": (context) => AdminPage(),
        "/Auteur": (context) => Auteur()
        // "/Commande": (context) => Commande(),
        // "UnExemplaire": ((context) => UnExemplaire()),
        // "/Proposition": (context) => Proposition(),
        // "VendeurPage": (context) => VendeurPage(),
      },
    );
  }
}
