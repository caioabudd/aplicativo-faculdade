
import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginaSala.dart';

import './taks.dart';



  final list = [
    Task('Laboratório Multidisciplinar 1 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 2 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 3 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 4 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 5 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 6 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 7 ', 'Clique para entrar nas instruções', ),
    Task('Laboratório Multidisciplinar 8 ', 'Clique para entrar nas instruções', ),
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
        title: Center(child : Text("Salas 4R")),
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
            onTap: () => 
              Navigator.push(context, MaterialPageRoute(
                
                builder: (BuildContext context) => redirecionar(index)))


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
        //Função para redirecionar
  redirecionar(int index) { 
    if(index == 0) {   
             
      return paginaSala();

    }if (index == 1){

      return paginaSala2();

     }; 
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
              Navigator.push(context, MaterialPageRoute(
                
               
                
                builder: (BuildContext context) => redirecionar(index)))
        
        
      );

    }, separatorBuilder: (BuildContext context, int index) { 
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
              Navigator.push(context, MaterialPageRoute(
                
                builder: (BuildContext context) => redirePesquisa(index, result)))
        
        
      );

    }, separatorBuilder: (BuildContext context, int index) {
       return Divider(); 
       },
   );
  }
}
      //redireciona a Pesquisa
      redirePesquisa (int index, String result) {
        if (result == "Laboratório Multidisciplinar 1 " ) {
            return paginaSala();
          } if (result == "Laboratório Multidisciplinar 2 " ) {
            return paginaSala2();
         } if (result == "Laboratório Multidisciplinar 3 ") {
            return paginaSala(); 
         
           };



  }



