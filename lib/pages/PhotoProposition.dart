import 'package:flutter/material.dart';

class PhotoProposition extends StatelessWidget {
  const PhotoProposition({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        sonRow(context),
                        SizedBox(height: 30),
                        sonRow(context),
                        SizedBox(height: 30),
                        sonRow(context),
                        SizedBox(height: 30),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.fromLTRB(24, 10, 24, 10),
          alignment: Alignment.center,
          width: 35,
          height: 60,
          child: Center(
            child: TextButton(
              onPressed: () {
                null;
              },
              child: Text(
                'Envoyer',
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
      ),
    );
  }
}

Widget sonRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 300,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.green, // Border color
            width: 3.0, // Border width
          ),
        ),
        child: Icon(
          Icons.photo,
          size: 150,
          color: Colors.grey.shade200,
        ),
      ),
      Container(
        height: 300,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.green, // Border color
            width: 3.0, // Border width
          ),
        ),
        child: Icon(
          Icons.photo,
          size: 150,
          color: Colors.grey.shade200,
        ),
      ),
    ],
  );
}
