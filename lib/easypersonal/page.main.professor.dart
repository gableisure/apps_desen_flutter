import 'package:flutter/material.dart';

class PageMainProfessor extends StatefulWidget {
  @override
  _PageMainProfessorState createState() => _PageMainProfessorState();
}

class _PageMainProfessorState extends State<PageMainProfessor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              width: double.maxFinite,
              color: Colors.deepOrange,
              padding: EdgeInsets.only(
                top: 30,
                left: 40,
                right: 40,
              ),
              child: Column(
                children: [
                  SizedBox(
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 160,
              left: 30,
              right: 30,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                padding: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(25),),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 130,
                            height: 100,
                            child: ElevatedButton(
                              onPressed: () => {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.message_rounded,
                                      color: Color(0XFF2596BE),
                                      size: 50,
                                    ),
                                    Text(
                                      "Feedbacks",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Color(0XFF2596BE),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            height: 100,
                            child: FlatButton(
                              onPressed: () => {},
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.message_rounded,
                                    color: Color(0XFF2596BE),
                                    size: 50,
                                  ),
                                  Text(
                                    "Feedbacks",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0XFF2596BE),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: FlatButton(
                              onPressed: () => {},
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.attach_money_rounded,
                                    color: Color(0XFF2596BE),
                                    size: 50,
                                  ),
                                  Text(
                                    "Treinos",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0XFF2596BE),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            height: 100,
                            child: FlatButton(
                              onPressed: () => {},
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.attach_money_rounded,
                                    color: Color(0XFF2596BE),
                                    size: 50,
                                  ),
                                  Text(
                                    "Treinos",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0XFF2596BE),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]
                    ),
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
