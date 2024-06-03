import 'package:flutter/material.dart';

class AdminPagePropositions extends StatelessWidget {
  const AdminPagePropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              // color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          width: 2000,
                          height: 80,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.green,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 255, 215),
                                    borderRadius: BorderRadius.circular(80.0)),
                                child: Icon(
                                  Icons.person_4_sharp,
                                  size: 30,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                // color: Colors.green.shade200,
                                // width: 115,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Utilisateur 1',
                                  style: TextStyle(
                                      fontFamily: 'Cream',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          width: 2000,
                          height: 80,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.green,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 255, 215),
                                    borderRadius: BorderRadius.circular(80.0)),
                                child: Icon(
                                  Icons.person_4_sharp,
                                  size: 30,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                // color: Colors.green.shade200,
                                // width: 115,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Utilisateur 2',
                                  style: TextStyle(
                                      fontFamily: 'Cream',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          width: 2000,
                          height: 80,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.green,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 255, 215),
                                    borderRadius: BorderRadius.circular(80.0)),
                                child: Icon(
                                  Icons.person_4_sharp,
                                  size: 30,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                // color: Colors.green.shade200,
                                // width: 115,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Utilisateur 3',
                                  style: TextStyle(
                                      fontFamily: 'Cream',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          width: 2000,
                          height: 80,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.green,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 255, 215),
                                    borderRadius: BorderRadius.circular(80.0)),
                                child: Icon(
                                  Icons.person_4_sharp,
                                  size: 30,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                // color: Colors.green.shade200,
                                // width: 115,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Utilisateur 4',
                                  style: TextStyle(
                                      fontFamily: 'Cream',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
