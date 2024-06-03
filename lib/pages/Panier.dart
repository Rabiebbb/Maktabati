import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:bazar/pages/Livraison.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  List<Map<dynamic, dynamic>> details = [
    {
      'name': 'Le prince d\'Espagne',
      'prix': "1000.00",
      'isbn': '123',
      'photo': 'photo',
      'etat': '6',
    },
    {
      'name': 'Le prince d\'Espagne',
      'prix': "1000.00",
      'isbn': '123',
      'photo': 'photo',
      'etat': '6',
    },
  ];
  Widget booktile(Map<dynamic, dynamic> details) {
    return Column(
      children: [
        Slidable(
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
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
                  Icons.book,
                  size: 80,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/DeExemplaire');
                    },
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
                              child: Row(
                                children: [
                                  Text(
                                    'Etat: ' + details['etat'],
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Titre: ' + details['name'],
                                    style: TextStyle(
                                      fontFamily: 'Rale',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )),
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
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.delete,
                    size: 40,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          // child: ListTile(
          //   leading: Container(child: Icon(Icons.book_online)),
          //   title: Container(child: Text(details['name',
          //   style: TextStyle(fontWeight: FontWeight.bold, fontfamily: 'Rale')],),),
          //   subtitle: Container(child: Text(details['prix'],),),
          //   trailing: Center(
          //     child: IconButton(
          //       icon: Icon(Icons.delete),
          //       onPressed: () {},
          //     ),
          //   ),
          // ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Mon Panier',
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Rale',
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 50),
              for (int i = 0; i < details.length; i++) booktile(details[i]),
              SizedBox(height: 20),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(24, 10, 24, 10),
        alignment: Alignment.center,
        width: 35,
        height: 60,
        child: Center(
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Livraison();
                },
              );
            },
            child: Text(
              'Commander',
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
              splashFactory: NoSplash.splashFactory, // Disable splash effect
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
    );
  }
}
