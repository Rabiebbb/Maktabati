import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

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
                    Container(
                      child: Text(
                        'Page d\'Administaration',
                        style: TextStyle(
                          fontFamily: 'Cream',
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/AdminPageCommandes');
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            width: 2000,
                            height: 80,
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 213, 255, 215),
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  child: Icon(
                                    Icons.open_in_new,
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
                                    'Les commandes',
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
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/AdminPagePropositions');
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            width: 2000,
                            height: 80,
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 213, 255, 215),
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  child: Icon(
                                    Icons.open_in_new,
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
                                    'Les propositions',
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
                        ),
                        SizedBox(
                          height: 5,
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
