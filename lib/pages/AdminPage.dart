import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Map<dynamic, dynamic> details = {
    'name': 'book',
    'prix': 1000.toString(),
    'date': '12/5/2024',
    'heure': '12:00',
    'etat': '2',
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(children: <Widget>[
        Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                element(context, details),
                SizedBox(height: 30),
                element(context, details),
                SizedBox(height: 30),
                element(context, details),
              ],
            ),
          ),
        )
      ])),
    );
  }
}

Widget element(BuildContext context, Map<dynamic, dynamic> details) {
  return GestureDetector(
    // onTap: () => Navigator.pushNamed(context, "/"),
    child: Container(
      height: 100,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.green, // Border color
          width: 3.0, // Border width
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.request_page_outlined,
            size: 80,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 90,
              width: 200,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4),
                  Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.green,
                    child: Text(
                      'Nbr Exemplaires: ' + details['etat'],
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.green,
                    child: Text(
                      'Prix: ' + details['prix'] + ' DZD',
                      style: TextStyle(
                        fontFamily: 'Rale',
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 18, 0, 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Valider',
                  style: TextStyle(
                    fontFamily: 'Rale',
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
                Icon(Icons.double_arrow_outlined),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
