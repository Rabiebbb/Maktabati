import 'package:flutter/material.dart';

class Proposition extends StatelessWidget {
  const Proposition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: Text(
                        'Proposition',
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
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Titre',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                                'Auteur',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                                'ISBN',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Description',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                // height: 50,
                                child: TextField(
                                  minLines: 1,
                                  maxLines: 6,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                                'Etat (/10)',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
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
                                'Prix (DZD)',
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(45, 0, 45, 0),
                              // width: 40,
                              height: 50,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/PhotoProposition');
                                  },
                                  child: Text(
                                    'Ajouter des images',
                                    style: TextStyle(
                                      fontFamily: "Rale",
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    fixedSize: Size(500, 70),
                                    shadowColor: Colors.transparent,
                                    animationDuration:
                                        Duration(milliseconds: 100),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
