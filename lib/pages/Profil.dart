import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

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
                        'Profil',
                        style: TextStyle(
                          fontFamily: 'Cream',
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //
                      margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => null,
                            icon: Icon(
                              Icons.person_2_rounded,
                              size: 50,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            width: 210,
                            alignment: Alignment.centerLeft,
                            //
                            child: Column(
                              children: [
                                Text(
                                  'Zakaria_3',
                                  style: TextStyle(
                                    fontFamily: 'Cream',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '0625 24 12 13',
                                  style: TextStyle(
                                      fontFamily: 'Cream',
                                      fontSize: 16,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(height: 30)),
                          ),
                          Container(
                            width: 115,
                            // margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              child: Text(
                                'Deconnecter',
                                style: TextStyle(
                                    fontFamily: 'Cream',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/MonCompte'),
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
                                    Icons.person_3_sharp,
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
                                    'Mon compte',
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
                          onTap: () =>
                              Navigator.pushNamed(context, '/Favorites'),
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
                                    borderRadius: BorderRadius.circular(
                                        80.0), // Adjust the radius here
                                  ),
                                  child: Icon(
                                    Icons.favorite,
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
                                  child: GestureDetector(
                                    child: Text(
                                      'Mes favoris',
                                      style: TextStyle(
                                          fontFamily: 'Cream',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
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
                          onTap: () => Navigator.pushNamed(context, '/Aide'),
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
                                    borderRadius: BorderRadius.circular(
                                        80.0), // Adjust the radius here
                                  ),
                                  child: Icon(
                                    Icons.chat,
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
                                  child: GestureDetector(
                                    child: Text(
                                      'Aide',
                                      style: TextStyle(
                                          fontFamily: 'Cream',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
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
                          onTap: () =>
                              Navigator.pushNamed(context, '/Proposition'),
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
                                    borderRadius: BorderRadius.circular(
                                        80.0), // Adjust the radius here
                                  ),
                                  child: Icon(
                                    Icons.offline_share_rounded,
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
                                  child: GestureDetector(
                                    child: Text(
                                      'Proposer un livre',
                                      style: TextStyle(
                                          fontFamily: 'Cream',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
