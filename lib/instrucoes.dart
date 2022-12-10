import 'package:flutter/material.dart';

class instr {
  String imagem;
  String description;

  instr(this.imagem, this.description);
}

Widget balls3(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
       
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

       

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

       
      ],
    ),
  );
} else {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        
      ],
    ),
  );

};
}