

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_service.dart';
import 'package:provider/provider.dart';

@override

class teste extends StatelessWidget {
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      
    
      body: 

Column(
  children: [
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
  ],
),
    );
  }
}