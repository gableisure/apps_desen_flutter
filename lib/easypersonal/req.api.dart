/*
*  O pequeno exemplo consome uma API no localhost que retorna um conjunto de dados em json
* que é renderizado no view
*
* */

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReqAPI extends StatefulWidget {
  @override
  _ReqAPIState createState() => _ReqAPIState();
}

class _ReqAPIState extends State<ReqAPI> {
  final uri = "10.0.2.2:3000";


  reqPost() async {
    http.Response response = await http.post(
      Uri.http(uri, "/api/v1/usuarios/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": "lucas@adm.comt",
        "password": "admin123"
      }),
    );
    if(response.statusCode == 200) print("Status Code: ${response.statusCode}");
    else print(response.statusCode);
    print(json.decode(response.body));
  }

   // reqGet() async {
   //   http.Response response = await http.get(
   //     Uri.http(uri, "/api/v1/usuarios/")
   //   );
   //   if(response.statusCode == 200) print("200");
   //   else print(response.statusCode);
   //   print(json.decode(response.body));
   // }

  @override
  void initState() {
    super.initState();
    reqPost();
    // reqGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testes Requisições http"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
