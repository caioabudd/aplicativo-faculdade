import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/second.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/foundation/key.dart';

import './taks.dart';

class Home extends StatefulWidget {
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final list = [
    Task(
      'Edificio 4R',
      'Salas 4R',
      
    ),
  ];

void _ShowDialog() {
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text('Aviso'),
      content: Text('O Aplicativo ainda está em construção.'),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Sair')
    ),
    ],
    );
  });
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Center(child: Text('Escolha o local que você está')),
        actions: [
         IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () => context.read<AuthService>().logout()
                      ),
        ],
         
      ),

      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(list[index].sala),
              subtitle: Text(list[index].description),
              onTap: () => Navigator.of(context).pushNamed('escolher'));
        },
        separatorBuilder: (BuildContext context, int separatorIndex) {
          return Divider();

        },
        itemCount: list.length,
        
      ),

      bottomNavigationBar:
        IconButton( 
                icon: Icon(Icons.info),
                onPressed: _ShowDialog,
                
                ),

      

     

      



      
  
/*
Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: OutlinedButton(
          onPressed: () => context.read<AuthService>().logout(),
          style: OutlinedButton.styleFrom(
            primary: Colors.red,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sair do App',
                  style: TextStyle(fontSize: 15),
                ),
                ),
            ],
          ),
        ),
        ),


*/


    );
    

  
    
  }
}





