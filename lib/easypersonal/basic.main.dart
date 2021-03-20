import 'package:app_desenvolvimento/tabbar/page.main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BasicsPage extends StatefulWidget {
  @override
  _BasicsPageState createState() => _BasicsPageState();
}

class _BasicsPageState extends State<BasicsPage> {
  final List<String> items = [
    'Gabriel Ribeiro de Araújo',
    'Guilherme Silva Freitas',
    'Iago da Cunha Nogueira',
    'Lucas Sodre Menezes',
    'Rene Boaventura Junior',
    'Romario Santos Oliveira',
  ];

  @override
  Widget build(BuildContext context) => TabBarWidget(
    title: 'Easy Personal',
    tabs: [
      Tab(icon: Icon(Icons.face), text: 'Alunos'),
      Tab(icon: Icon(Icons.assignment), text: 'Treinos'),
      Tab(icon: Icon(Icons.fitness_center), text: 'Exercícios'),
      Tab(icon: Icon(Icons.date_range), text: 'Agenda'),
      Tab(icon: Icon(Icons.attach_money), text: 'Financeiro'),
    ],
    children: [
      buildAlunos(),
      buildTreinos(),
      buildExercicios(),
      buildAgenda(),
      buildFinanceiro(),
    ],
  );

  Widget buildAlunos() => Container(
    child: Padding(
      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Column(
        children: [
          _buildAlunoItem(),
          Text("Text"),
        ],
      ),
    ),
  );

  Widget _buildAlunoItem() => Container(
    child: Expanded(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 8, right: 5, bottom: 20),
            child: ElevatedButton(
              onPressed: () => {},
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 65,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox( height: 8.0, ),
                      Text(
                        "Renê Boaventura Junior",
                        style: TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    ),
  );

  Widget buildTreinos() => Center(
    child: Text("Texto"),
  );

  Widget buildExercicios() => Center(
    child: Text("Texto"),
  );

  Widget buildAgenda() => Center(
    child: Text("Texto"),
  );

  Widget buildFinanceiro() => Center(
    child: Text("Texto"),
  );

  _buildTeste() => Container(
    padding: EdgeInsets.all(2),
    child: Column(
      children: [
        Text("Testo"),
      ],
    ),
  );
}

