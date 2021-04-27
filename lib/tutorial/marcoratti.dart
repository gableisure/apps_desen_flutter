import 'dart:convert';

import 'package:app_desenvolvimento/tutorial/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Marcoratti extends StatefulWidget {
  @override
  _MarcorattiState createState() => _MarcorattiState();
}

class _MarcorattiState extends State<Marcoratti> {

  String url = 'jsonplaceholder.typicode.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Future Builder',),
      ),
      body: buildFutureBuilder(),
    );
  }

  buildFutureBuilder() {
    return FutureBuilder<Post>(
        future : getDataPost(),
        builder: (context, snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.none :
            case ConnectionState.waiting:
              return Center(child: Text("Carregando..."));
            default:
              if(snapshot.hasError){
                print(snapshot.error);
                return Center(child: Text("Erro ao carregar..."),
                );
              } else {
                return Center(
                    child:
                    Text('Id :' + snapshot.data.id.toString() + '\n\ntitulo : '
                        + snapshot.data.title ,
                        style : TextStyle(fontSize: 20.0) ));
              }
          }
        });
  }

  Future<Post> getDataPost() async {
    final response = await http.get(Uri.https(url, "/posts/3"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Falha ao carregar dados...');
    }
  }

}
