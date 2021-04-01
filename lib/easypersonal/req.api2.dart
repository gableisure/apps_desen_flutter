/*
*  O pequeno exemplo de código que consome uma API no localhost que retorna um conjunto de dados em json
* que é renderizado no view
*
* */

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ReqAPI2 extends StatefulWidget {
  @override
  _ReqAPI2State createState() => _ReqAPI2State();
}

class _ReqAPI2State extends State<ReqAPI2> {
  final uri = "10.0.2.2:3000";
  var usersData = [];

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

  }

  Future reqGet() async {
    http.Response response = await http.get(
      Uri.http(uri, "/api/v1/usuarios/")
    );
    if(response.statusCode == 200) {
      usersData = json.decode(response.body)['data'][0];
      return usersData;
    } else {
      throw Exception('Falha ao carregar usuários.');
    }

  }

  @override
  void initState() {
    super.initState();
    reqGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testes Requisições http"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: reqGet(),
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                return ListView.builder(
                    itemCount: usersData.length,
                    itemBuilder: (context, index) {
                      return Text("${usersData[index]["int_idausuario"]} ${usersData[index]["vhr_nome"]}");
                    },
                );
              } else if(snapshot.hasError) {
                return Text("${snapshot.hasError}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
