import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: 5000,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/CreateAccount");
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(0, 255, 255, 255),
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        shadowColor: const Color.fromARGB(0, 255, 255, 255),
                      ),
                      child: Text(
                        'Sauter',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 60, 146, 63),
                          fontFamily: 'Rale',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/Welcome/second/Frame.svg",
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      'Votre Livre Vous Attend',
                      style: TextStyle(
                        fontFamily: 'Cream',
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(60, 15, 60, 0),
                    child: Center(
                      child: Container(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Laissez-nous vous guider vers la lecture idéale. Découvrez des livres adaptés à vos goûts pour une expérience enrichissante..",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontFamily: 'Rale',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/Welcome/second/Group942.svg",
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/welcome3");
                        },
                        child: Text(
                          'Continuer',
                          style: TextStyle(
                            fontFamily: "Rale",
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          fixedSize: Size(500, 70),
                          animationDuration: Duration(milliseconds: 100),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/SignIn");
                        },
                        child: Text(
                          'Se connecter',
                          style: TextStyle(
                            fontFamily: "Rale",
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          fixedSize: Size(500, 70),
                          shadowColor: Colors.transparent,
                          animationDuration: Duration(milliseconds: 100),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(87, 106, 255, 146),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/welcome3'),
                    child: Container(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    width: 250,
                    height: 7,
                    child:
                        SvgPicture.asset("assets/Welcome/first/Rectangle.svg"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
