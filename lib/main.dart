import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/auth_check.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/contact_problema.dart';
import 'package:flutter_application_1/coodernacoes.dart';
import 'package:flutter_application_1/lib_pages/teste.dart';
import 'package:flutter_application_1/salas.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import './home.dart';
import 'paginaSala.dart';
import 'second.dart';
import 'escolha.dart';
import 'salas.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthService())
         /* ChangeNotifierProvider(create: (context) => ContaRepository()),
          ChangeNotifierProvider(create: (context) => AppSettings()),
          ChangeNotifierProvider(create: (context) => FavoritasRepository()),  */
        ],

      
    child: Main()
     ),
    );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local',
      routes: {
        '/': (context) => AuthCheck(),
        'problema': (context) => ContactProblema(),
        'second': (context) => second(),
        'sala1': (context) => paginaSala1(),
        'sala2': (context) => paginaSala2(),
        'sala3': (context) => paginaSala3(),
        'escolher': (context) => Escolha(),
        'salas': (context) => salas(),
        'sala4': (context) => paginaSala4(),
        'sala5': (context) => paginaSala5(),
        'sala6': (context) => paginaSala6(),
        'sala7': (context) => paginaSala7(),    //Laboratório de informática 3
        'coordenação': (context) => coodernacoes(),
        'coordenacaoExatas': (context) => salaCoodernacao(),



        
      
      },
    );
  }
}

