import 'package:flutter/material.dart';

class InsertNewPassword extends StatefulWidget {
  const InsertNewPassword({super.key});

  @override
  State<InsertNewPassword> createState() => _InsertNewPasswordState();
}

class _InsertNewPasswordState extends State<InsertNewPassword> {
  bool _obscureText2 = true;
  bool _obscureText1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: <Widget>[
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
                      'Insérer un nouveau mot de passe',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 60, 146, 63),
                        fontFamily: 'Rale',
                        fontSize: 25,
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
                      'Nouveau mot de passe',
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
                          suffixIcon: GestureDetector(
                            onTap: () => setState(() {
                              _obscureText1 = !_obscureText1;
                            }),
                            child: Icon(
                              _obscureText1
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                        obscureText: _obscureText1,

                        // onChanged: (value) => _name = value,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Confirmez',
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
                          suffixIcon: GestureDetector(
                            onTap: () => setState(() {
                              _obscureText2 = !_obscureText2;
                            }),
                            child: Icon(
                              _obscureText2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                        ),
                        obscureText: _obscureText2,

                        // onChanged: (value) => _email = value,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ])),
      ]),
    );
  }
}
