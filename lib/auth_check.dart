import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:flutter_application_1/home.dart';
import 'package:provider/provider.dart';

import 'lib_pages/login_page.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if(auth.isLoandig) 
      return loading();
    else if(auth.usuario == null) 
      return LoginPage();
    else
      return Home();

  
    
  }
}

loading() {
  return Scaffold(
    body: Center(
      child: CircularProgressIndicator(),
      )
  );


}