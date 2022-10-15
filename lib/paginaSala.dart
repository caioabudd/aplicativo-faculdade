import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/taks.dart';
import './taks.dart';
import 'package:http/http.dart' as http;
import 'second.dart';
import 'dart:convert';

class paginaSala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Laboratório 1")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Icon(Icons.info_rounded),
                Center(
                  child: Text(
                    'Siga o caminho verde no chão para chegar ao local desejado.',
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/entrada.png',
                    width: 500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/escada_sala1.png',
                    width: 450,
                  ),
                ),
                Image.asset(
                  'assets/images/sala1.png',
                  width: 450,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      icon: Icon(Icons.info_rounded),
                      onPressed: () {
                        Navigator.of(context).pushNamed('problema');
                       
                        
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class paginaSala2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Laboratório 2")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Icon(Icons.info_rounded),
                Center(
                  child: Text(
                    'Siga o caminho verde no chão para chegar ao local desejado.',
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/images/entrada.png',
                    width: 500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/escada_sala1.png',
                    width: 450,
                  ),
                ),
                Image.asset(
                  'assets/images/sala2.png',
                  width: 450,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class paginaSala3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Laboratório 2")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Icon(Icons.info_rounded),
                Center(
                  child: Text(
                    'Siga o caminho verde no chão para chegar ao local desejado.',
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/images/entrada.png',
                    width: 500,
                  ),
                ),
                Image.asset(
                  'assets/images/sala1.png',
                  width: 450,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class paginaSala4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Laboratório 2")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Icon(Icons.info_rounded),
                Center(
                  child: Text(
                    'Siga o caminho verde no chão para chegar ao local desejado.',
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/images/entrada.png',
                    width: 500,
                  ),
                ),
                Image.asset(
                  'assets/images/sala1.png',
                  width: 450,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class paginaSala5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Laboratório 2")),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Icon(Icons.info_rounded),
                Center(
                  child: Text(
                    'Siga o caminho verde no chão para chegar ao local desejado.',
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/images/entrada.png',
                    width: 500,
                  ),
                ),
                Image.asset(
                  'assets/images/sala1.png',
                  width: 450,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





     //   width: 300,
                  //  height: 300,
                  //  color: Color.fromARGB(255, 179, 201, 202),
                 //  child:
                   //  Image.asset('assets/images/entrada.png', width: 50 ,),
                         //Arrumar essa parte do código
                      
                 // ),
      // );
               //   const Divider(
               //    height: 20,
               //    thickness: 5,
               //    indent: 0,
               //    endIndent: 0,
                 //  color: Colors.black,
                //   ),
               //   
               //   Container(
                //    child: Image.asset('assets/images/sala1.jpg', width: 150 ,),

                //  ),
                
            //*
 //     );
       
  //  }

//  }


