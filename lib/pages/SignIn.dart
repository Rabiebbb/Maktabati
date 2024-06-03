import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:bazar/services/AuthServices.dart';
import 'package:bazar/Services/globals.dart';
import 'Categories.dart';
import 'dart:convert';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignIn> {
  String _email = '';
  String _password = '';

  Future<void> loginPressed() async {
    print('$_email,$_password');
    try {
      if (_email.isNotEmpty && _password.isNotEmpty) {
        http.Response response = await AuthServices.login(_email, _password);
        Map responseMap = jsonDecode(response.body);
        String show = responseMap.toString();
        if (response.statusCode == 200) {
          print('success: $responseMap');
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Categories(),
              ));
        } else {
          errorSnackBar(context, responseMap.values.first);
          errorSnackBar(context, show);
          // print("Dosen't exist ya5o");
          throw jsonDecode(response.body)["Message"] ?? "y a une erreur";
        }
      } else {
        errorSnackBar(context, 'Veuillez entrer vos informations');
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
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Rale',
                      fontSize: 40,
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
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
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
                    onChanged: (value) {
                      _email = value;
                    },
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
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
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
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 40, 0),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Forgot");
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(0, 255, 255, 255),
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      shadowColor: const Color.fromARGB(0, 255, 255, 255),
                    ),
                    child: Text(
                      'Mot de passe oublié?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rale',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  alignment: Alignment.center,
                  width: 325,
                  height: 60,
                  child: Center(
                    child: TextButton(
                      // onPressed: () => loginPressed(),
                      onPressed: () => Navigator.pushNamed(context, '/Profil'),
                      child: Text(
                        'Se connecter',
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
                  height: 40,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(44, 0, 57, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Vous n'avez pas de compte?",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Rale',
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.fromLTRB(37, 0, 45, 0),
                          // alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/CreateAccount");
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
                              'créez-le',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Rale',
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
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
