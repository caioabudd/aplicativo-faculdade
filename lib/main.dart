import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './home.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local',
     home: Home(),
     );

  
  }


}