import 'package:flutter/material.dart';

class Auteur extends StatelessWidget {
  const Auteur({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    // color: Colors.green,
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(500)),
                    child: Icon(
                      Icons.person,
                      size: 60,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      'Description',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Dan Brown est un auteur américain célèbre pour ses romans à suspense, notamment "Da Vinci Code". Il est reconnu pour ses intrigues captivantes mêlant histoire, art et religion.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 20,
                        color: Colors.green,
                      ),
                      'Livres',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Forteresse Digitale\nAnges et Démons\nDa Vinci Code\n',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
