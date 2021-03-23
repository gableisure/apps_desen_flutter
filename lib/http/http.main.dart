/*
*  O pequeno exemplo consome uma API no localhost que retorna um conjunto de dados em json
* que é renderizado no view
*
* */

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpMain extends StatefulWidget {
  @override
  _HttpMainState createState() => _HttpMainState();
}

class _HttpMainState extends State<HttpMain> {
  final uri = "api-easy-personal-dsv.herokuapp.com";
  List data;
  List usersData;

  getLinguagens() async {
    http.Response response = await http.get(Uri.https(uri, "/professores"));
    data = json.decode(response.body);
    setState(() {
      usersData = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getLinguagens();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testes Requisições http"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: usersData == null ? 0 : usersData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.all(15),
                  child: Text("${usersData[index]["vhr_nome"]}"),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
