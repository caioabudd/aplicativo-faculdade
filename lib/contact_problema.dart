import 'package:flutter/material.dart';


class ContactProblema extends StatelessWidget {

Widget fieldName() {
  return TextFormField (
    decoration: InputDecoration(
      labelText: 'Nome:'
    ),
  );
}

Widget fieldEmail() {
  return TextFormField (
    decoration: InputDecoration(
      labelText: 'Email:'
    ),
  );
}

Widget fieldProblem() {
  return TextFormField (
    decoration: InputDecoration(
      labelText: 'Problema:'
    ),
  );
}

@override 
Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Envie seu problema'),
            actions: [
              IconButton(icon: const Icon(Icons.save), onPressed: null)
            ],
        ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(children: [
            fieldName(),
            fieldEmail(),
            fieldProblem(),
           ],
          ),
        ),
      ),

    );

 }

}