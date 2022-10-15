import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/auth_check.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/contact_problema.dart';
import 'package:flutter_application_1/lib_pages/teste.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import './home.dart';
import 'paginaSala.dart';
import 'second.dart';

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
      
      title: 'Local',
      routes: {
        '/': (context) => AuthCheck(),
        'problema': (context) => ContactProblema(),
        'second': (context) => second(),
        'sala1': (context) => paginaSala(),
        'sala2': (context) => paginaSala2(),
        
      
      },
    );
  }
}

