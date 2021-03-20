import 'package:app_desenvolvimento/easypersonal//basic.main.dart';
import 'package:flutter/material.dart';
import 'buttons/page.main.dart';

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
      home: BasicsPage(),
    );
  }
}
