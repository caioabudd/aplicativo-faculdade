import 'dart:convert';
import 'package:flutter_application_1/funcoes.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginaSala.dart';
import './taks.dart';


final list = [
  Task(
    'Laboratório Multidisciplinar 1 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 2 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 3 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 4 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 5 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 6 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 7 ',
    'Clique para entrar nas instruções',
  ),
  Task(
    'Laboratório Multidisciplinar 8 ',
    'Clique para entrar nas instruções',
  ),
];

class second extends StatefulWidget {
  second({Key? key}) : super(key: key);


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<second> {
  int _opcaoSelecionada = 0;

  void remove(index) {
    list.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Salas 4R")),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(list[index].sala),
              subtitle: Text(list[index].description),
              onTap: () =>
                  Navigator.of(context).pushNamed(Funcoes().redirecionar(index)));
        },
        separatorBuilder: (BuildContext context, int separatorIndex) {
          return Divider();
        },
        itemCount: list.length,
      ),
    );
  }
}



class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Laboratório Multidisciplinar 1 ',
    'Laboratório Multidisciplinar 2 ',
    'Laboratório Multidisciplinar 3 ',
    'Laboratório Multidisciplinar 4 ',
    'Laboratório Multidisciplinar 5 ',
    'Laboratório Multidisciplinar 6 ',
    'Laboratório Multidisciplinar 7 ',
    'Laboratório Multidisciplinar 8 ',
    'Laboratório Multidisciplinar 9 ',
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
            onTap: () =>
                Navigator.of(context).pushNamed(Funcoes().mudaResultado(result, index)));
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
            onTap: () =>
                Navigator.of(context).pushNamed(Funcoes().mudaResultado(result, index)));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}

