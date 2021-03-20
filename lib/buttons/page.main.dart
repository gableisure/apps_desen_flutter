import 'package:flutter/material.dart';

class ButtonsMain extends StatefulWidget {
  @override
  _ButtonsMainState createState() => _ButtonsMainState();
}

class _ButtonsMainState extends State<ButtonsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 60),
        child: SizedBox(
          width: 130,
          height: 100,
          child: ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Feedbacks",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0XFF2596BE),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
