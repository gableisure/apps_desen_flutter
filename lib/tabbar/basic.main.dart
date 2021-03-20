import 'package:app_desenvolvimento/tabbar/page.main.dart';
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
    child: ListView.separated(
      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
      separatorBuilder: (context, index) => Divider(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TextButton(
            onPressed: () {
              showModalBottomSheet<void>(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.only(top: 30),

                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              "Guilherme Silva Freitas",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 27.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          child: ListTile(
            leading: Icon(
                Icons.person,
                size: 30
            ),
            title: Text(
                '${items[index]}',
                style: TextStyle(
                  fontSize: 18.0,
                ),
            ),
            subtitle: Text("Aluno há 3 meses"),
          ),
        );
      },
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


}

