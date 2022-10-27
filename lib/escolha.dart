import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/second.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/foundation/key.dart';

import './taks.dart';

class Escolha extends StatelessWidget {
  final list = [
    Task(
      'Laboratórios',
      '4R',
    ),
    Task(
      'Salas 4R',
      'Salas 4R',

    ),
  ];


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
              onTap: () => Navigator.of(context).pushNamed(redirecionarSala(index)));
        },
        separatorBuilder: (BuildContext context, int separatorIndex) {
          return Divider();

        },
        itemCount: list.length,
        
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



redirecionarSala(int index)  {          //função para escolher entre laboratório ou salas


    if (index == 0 ) {
    
    return 'second';


    } if (index == 1){

      return 'salas';
    }



}