import 'package:flutter/material.dart';

class DeExemplaire extends StatelessWidget {
  const DeExemplaire({super.key});

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
