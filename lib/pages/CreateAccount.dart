import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:bazar/services/AuthServices.dart';
import 'package:bazar/Services/globals.dart';
import 'dart:convert';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String _email = '';
  String _name = '';
  String _password = '';
  String _num = '';
  String _prenom = 'mid';
  String _adresse = 'alger';

  Future<void> createPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    try {
      if (emailValid) {
        http.Response response = await AuthServices.register(
            _name, _email, _password, _prenom, _adresse, _num);
        Map responseMap = jsonDecode(response.body);
        print(response.body);
        if (response.statusCode == 201) {
          Navigator.pushNamed(context, '/ScreensControl');
        } else {
          errorSnackBar(context, responseMap.values.first);
        }
      } else {
        errorSnackBar(context, 'email not valid');
      }
    } catch (e) {
      errorSnackBar(context, "Erreur");
      Get.back();
      showDialog(
          context: Get.context!,
          builder: ((context) {
            return SimpleDialog(
              title: Text('Erreur'),
              contentPadding: EdgeInsets.all(20),
              children: [
                Text(e.toString()),
              ],
            );
          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    'Créer un compte',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 60, 146, 63),
                      fontFamily: 'Rale',
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      onChanged: (value) => _name = value,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      onChanged: (value) => _email = value,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Num de téléphone',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      onChanged: (value) => _num = value,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Mot de passe',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      onChanged: (value) => _password = value,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  alignment: Alignment.center,
                  width: 325,
                  height: 60,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        createPressed();
                        // Navigator.push(
                        //   context,
                        //   //   MaterialPageRoute(builder: (context) => Profil()),
                        //   // );
                        //   MaterialPageRoute(
                        //       builder: (context) => ScreensControl()),
                        // );
                      },
                      child: Text(
                        'Creer Compte',
                        style: TextStyle(
                          fontFamily: "Rale",
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(0, 255, 255, 255),
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(0, 255, 255, 255),
                        splashFactory:
                            NoSplash.splashFactory, // Disable splash effect
                        elevation: 0,
                        fixedSize: Size(500, 70),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(37, 0, 45, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // padding: EdgeInsets.fromLTRB(37, 0, 45, 0),
                          // alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () => null,
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                              backgroundColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                              shadowColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                            ),
                            child: Text(
                              'Vous avez déjà un compte?',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Rale',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.fromLTRB(37, 0, 45, 0),
                          // alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/SignIn");
                            },
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                              backgroundColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                              shadowColor:
                                  const Color.fromARGB(0, 255, 255, 255),
                            ),
                            child: Text(
                              'Se connecter',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Rale',
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
