import 'dart:convert';
import 'package:flutter_application_1/escolha.dart';
import 'package:flutter_application_1/funcoes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginaSala.dart';
import './taks.dart';
import 'package:flutter_application_1/funcoes.dart';
import './funcoes.dart';

final list = [
  Task(
    'Sala 10 ',
    'Clique para entrar nas instruções',
  ),
];

class salas extends StatefulWidget {
  salas({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<salas> {
  int _opcaoSelecionada = 0;

  get result => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Salas 4R")),

        ),
        body: ListView(
          children: <Widget>[
            Card(
                child: ListTile(
              title: Text('Sala 10'),
              onTap: () {
                Navigator.of(context).pushNamed('sala3');
              },
            )),
            Card(
              child: ListTile(
                title: Text('sala 11'),
                onTap: () {
                Navigator.of(context).pushNamed('sala4');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('sala 12'),
                onTap: () {
                Navigator.of(context).pushNamed('sala5');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('sala 13'),
                onTap: () {
                Navigator.of(context).pushNamed('sala6');
                },
              ),
            ),
          ],
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Sala 10 ',
    'Sala 11 ',
  ];

  List<String> Terms = [
    'Teste ',
    'Laboratório Multidisciplinar 2 ',
    'Laboratório Multidisciplinar 3 ',
    'Laboratório Multidisciplinar 4 ',
    'Laboratório Multidisciplinar 5 ',
    'Laboratório Multidisciplinar 6 ',
    'Laboratório Multidisciplinar 7 ',
    'Laboratório Multidisciplinar 8 ',
    'teste',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var sala in searchTerms) {
      if (sala.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(sala);
      }
    }
    return ListView.separated(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
            title: Text(result),
            onTap: () => Navigator.of(context)
                .pushNamed(Funcoes().mudaResultado(result, index)));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var sala in searchTerms) {
      if (sala.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(sala);
      }
    }
    return ListView.separated(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
            title: Text(result),
            onTap: () => Navigator.of(context)
                .pushNamed(Funcoes().mudaResultado(result, index)));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}








// usar esse código     onTap: () => Navigator.of(context).pushNamed('sala3')),