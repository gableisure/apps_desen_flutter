import 'package:app_desenvolvimento/easypersonal//basic.main.dart';
import 'package:app_desenvolvimento/easypersonal/req.api.dart';
import 'package:flutter/material.dart';
import 'buttons/page.main.dart';
import 'easypersonal/req.api2.dart';
import 'http/http.main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Development',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReqAPI2(),
    );
  }
}
