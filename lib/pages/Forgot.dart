import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:bazar/services/AuthServices.dart';
import 'package:bazar/Services/globals.dart';
import 'dart:convert';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  var _email = '';

  Future<void> forgotPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    try {
      if (emailValid) {
        http.Response response = await AuthServices.forgot(_email);
        Map responseMap = jsonDecode(response.body);
        print(response.body);
        if (response.statusCode == 200) {
          errorSnackBar(context, responseMap['status']);
        } else {
          errorSnackBar(context, responseMap['message']);
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
                    'Mot de passe oublié',
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
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/Lock.svg",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.fromLTRB(80, 10, 10, 0),
                  child: Text(
                    'Entrez votre e-mail pour réinitialiser le mot de passe',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Rale',
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
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
                    onChanged: (value) => {_email = value},
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 325,
                  height: 60,
                  child: Center(
                    child: TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/InsertNewPassword'),
                      child: Text(
                        'Soumettre',
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
                        fixedSize: Size(800, 70),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green,
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
