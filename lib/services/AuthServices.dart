import 'dart:convert';

import 'package:bazar/services/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthServices extends ChangeNotifier {
  static Future<http.Response> register(String name, String email,
      String password, String prenom, String adresse, String numero) async {
    Map<String, String> data = {
      "nom": name,
      "prenom": prenom,
      "adress": adresse,
      "numeroDetel": numero,
      "email": email,
      "password": password,
    };
    var headers = {'content-type': 'application/json'};
    var body = json.encode(data);
    var url =
        Uri.parse(baseURL + 'api/registere').replace(queryParameters: data);
    print(url);
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map<String, String> data = {
      "email": email,
      "password": password,
    };
    // var body = json.encode(data);
    var url = Uri.parse(baseURL + 'api/logine').replace(queryParameters: data);
    http.Response response = await http.get(
      url,
      headers: headers,
      // body: body,
    );
    print(url);
    print(response.body);
    return response;
  }

  static Future<http.Response> forgot(String email) async {
    Map<String, String> data = {
      "email": email,
    };
    var body = json.encode(data);
    var url =
        Uri.parse(baseURL + 'api/new_password').replace(queryParameters: data);
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(url);
    print(response.body);
    return response;
  }
}
