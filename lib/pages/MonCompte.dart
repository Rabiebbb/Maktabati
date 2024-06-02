import 'package:flutter/material.dart';

class MonCompte extends StatefulWidget {
  const MonCompte({super.key});

  @override
  State<MonCompte> createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  final TextEditingController controller = TextEditingController();
  String some = 'Hassan';
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Text(
                    'Mon compte',
                    style: TextStyle(
                      fontFamily: 'Cream',
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // color: Colors.grey,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.person,
                            size: 80,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 210, 255, 211),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Changer l'image",
                            style: TextStyle(
                              fontFamily: 'Cream',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Nom',
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
                                labelText: some,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                labelText: 'person@gmail.com',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Adresse',
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
                                labelText: 'Alger',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Numéro de téléphone',
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
                                labelText: '0123456789',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                                suffixIcon: GestureDetector(
                                  onTap: () => setState(() {
                                    _obscureText = !_obscureText;
                                  }),
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                                labelText: 'mot de passe',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                              ),
                              obscureText: _obscureText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          alignment: Alignment.center,
                          width: 325,
                          height: 60,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                null;
                                // Navigator.push(
                                //   context,
                                //   //   MaterialPageRoute(builder: (context) => Profil()),
                                //   // );
                                //   MaterialPageRoute(
                                //       builder: (context) => ScreensControl()),
                                // );
                              },
                              child: Text(
                                'Sauvegarder',
                                style: TextStyle(
                                  fontFamily: "Rale",
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                backgroundColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                shadowColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                splashFactory: NoSplash
                                    .splashFactory, // Disable splash effect
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
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
