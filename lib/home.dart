import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/second.dart';

import './taks.dart';

class Home extends StatelessWidget {
  final list = [
    Task('Edificio 4R', 'Salas 4R', ),
  
  ];

  void remove(index) {
    list.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Escolha o local que você está')),
        actions: [
          IconButton(
            onPressed: () {
             showSearch(
              context: context, 
              delegate: CustomSearchDelegate(), ); 
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
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => second()))
            
          );
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
    'Laboratório Multidisciplinar 7 ', 
    'Laboratório Multidisciplinar 8 ', 
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
        }
       );
  
    
  }

  @override
  Widget buildResults(BuildContext context) {
   List<String> matchQuery = [];
   for (var fruit in searchTerms) {
    if (fruit.toLowerCase().contains(query.toLowerCase())) {
      matchQuery.add(fruit);
    }
   }
   return ListView.builder(
    itemCount: matchQuery.length,
    itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );

    },
   );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
   for (var fruit in searchTerms) {
    if (fruit.toLowerCase().contains(query.toLowerCase())) {
      matchQuery.add(fruit);
    }
   }
   return ListView.builder(
    itemCount: matchQuery.length,
    itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );

    },
   );
  }
  }

