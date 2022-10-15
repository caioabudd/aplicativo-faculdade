import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/auth_service.dart';





class AuthException implements Exception {
  String message;
  AuthException(this.message);

}

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoandig = true;

  AuthService() {
    _authCheck();
  }
  
  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoandig = false; 
      notifyListeners();


    });
  }

_getUser() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  registrar(String email, String senha) async {

    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password') {
        throw AuthException('A senha é muito fraca!');

      } else if(e.code == 'email-already-in-use') {
        throw AuthException('Este email já está cadastrado');
      }

    }
  }

  
  login(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseAuthException catch (e) {
      if(e.code == 'user-not-found') {
        throw AuthException('Email não encontrado. Cadastre-se.');

      } else if(e.code == 'wrong-password') {
        throw AuthException('Senha incorreta. Tente novamente');
      
      }
      } 
    }
    
logout() async {
  await _auth.signOut();
  _getUser();

   }

}