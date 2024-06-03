import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';

class Aide extends StatelessWidget {
  const Aide({super.key});

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
                    color: Colors.green,
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.white,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          child: Text(
                            'Centre d\'aide',
                            style: TextStyle(
                                fontFamily: 'Cream',
                                fontSize: 29,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Dite-nous comment nous pouvons vous aidez!',
                            style: TextStyle(
                              fontFamily: 'Cream',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: content(context, Icons.mail, 'Envoyer un mail',
                              130, 'admin@gmail.com'),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: content(context, Icons.phone,
                              'Appeler l\'administrateur', 170, '0125468821'),
                        ),
                      ],
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

Widget content(BuildContext context, IconData icon, String text, double? width,
    String copie) {
  return InkWell(
    onTap: () => FlutterClipboard.copy(copie),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            child: Icon(
              icon,
              color: Colors.green,
              size: 30,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Container(
            width: width,
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(fontFamily: 'Rale', fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'copier',
            style: TextStyle(fontFamily: 'Rale', fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
