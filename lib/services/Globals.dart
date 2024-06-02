import 'package:flutter/material.dart';

final String baseURL = 'http://127.0.0.1:8000/';
final Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(
      text,
      style: TextStyle(
        fontFamily: 'Rale',
      ),
    ),
    duration: const Duration(seconds: 1),
  ));
}
